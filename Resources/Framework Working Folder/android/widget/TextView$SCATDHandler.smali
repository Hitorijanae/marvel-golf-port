.class Landroid/widget/TextView$SCATDHandler;
.super Landroid/os/Handler;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCATDHandler"
.end annotation


# static fields
.field static final MESSAGE_SCAN_WORD:I = 0x3

.field static final MESSAGE_SC_INIT:I = 0x1

.field static final MESSAGE_SC_RETRY:I = 0x2

.field static final MESSAGE_SC_TIMEOUT_CLOSE:I = 0x4

.field private static final SC_INIT_DELAY:I = 0x3e8

.field private static final SC_RETRY_DELAY:I = 0x1f4

.field private static final SC_RETRY_TIMES:I = 0x2

.field private static final SC_TIMEOUT_DURATION:I = 0x3a98


# instance fields
.field mRetry:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .registers 3
    .parameter

    .prologue
    .line 14105
    iput-object p1, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 14117
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$SCATDHandler;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14105
    invoke-direct {p0, p1}, Landroid/widget/TextView$SCATDHandler;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 14120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5e

    .line 14151
    :cond_6
    :goto_6
    return-void

    .line 14123
    :pswitch_7
    iput v2, p0, Landroid/widget/TextView$SCATDHandler;->mRetry:I

    .line 14124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView$SCATDHandler;->postSpellCheck(Ljava/lang/String;)V

    goto :goto_6

    .line 14127
    :pswitch_11
    iget v0, p0, Landroid/widget/TextView$SCATDHandler;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$SCATDHandler;->mRetry:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_22

    .line 14128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView$SCATDHandler;->postSpellCheck(Ljava/lang/String;)V

    goto :goto_6

    .line 14131
    :cond_22
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    iget-object v1, v0, Landroid/widget/TextView;->mSCATDQueue:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14132
    invoke-static {v2}, Landroid/widget/TextView;->access$12502(Z)Z

    .line 14133
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->SCATDProcessQueue()V

    goto :goto_6

    .line 14138
    :pswitch_36
    iget-object v1, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Landroid/widget/TextView;->SCATDRescanWord(Ljava/lang/String;)V
    invoke-static {v1, v0}, Landroid/widget/TextView;->access$12600(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_6

    .line 14143
    :pswitch_40
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v0}, Landroid/widget/TextView;->access$12700(Landroid/widget/TextView;)Landroid/widget/SpellChecker;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14144
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v0}, Landroid/widget/TextView;->access$12700(Landroid/widget/TextView;)Landroid/widget/SpellChecker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 14145
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$12702(Landroid/widget/TextView;Landroid/widget/SpellChecker;)Landroid/widget/SpellChecker;

    .line 14146
    iget-object v0, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x1

    #setter for: Landroid/widget/TextView;->mIsSCTimeoutclosed:Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$12802(Landroid/widget/TextView;Z)Z

    goto :goto_6

    .line 14120
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_7
        :pswitch_11
        :pswitch_36
        :pswitch_40
    .end packed-switch
.end method

.method postSpellCheck(Ljava/lang/String;)V
    .registers 5
    .parameter "word"

    .prologue
    .line 14154
    iget-object v1, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v1}, Landroid/widget/TextView;->access$12700(Landroid/widget/TextView;)Landroid/widget/SpellChecker;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 14155
    iget-object v1, p0, Landroid/widget/TextView$SCATDHandler;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSpellChecker:Landroid/widget/SpellChecker;
    invoke-static {v1}, Landroid/widget/TextView;->access$12700(Landroid/widget/TextView;)Landroid/widget/SpellChecker;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/SpellChecker;->spellCheck(Ljava/lang/String;)V

    .line 14157
    :cond_11
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView$SCATDHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 14158
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView$SCATDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 14159
    return-void
.end method
