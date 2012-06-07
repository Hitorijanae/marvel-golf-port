.class Lcom/android/internal/util/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mQuitObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/State;

.field private mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

.field private mInitialState:Lcom/android/internal/util/State;

.field private mIsConstructionCompleted:Z

.field private mMsg:Landroid/os/Message;

.field private mProcessedMessages:Lcom/android/internal/util/StateMachine$ProcessedMessages;

.field private mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/util/State;",
            "Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 625
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuitObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V
    .registers 5
    .parameter "looper"
    .parameter "sm"

    .prologue
    const/4 v1, 0x0

    .line 1106
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    .line 631
    new-instance v0, Lcom/android/internal/util/StateMachine$ProcessedMessages;

    invoke-direct {v0}, Lcom/android/internal/util/StateMachine$ProcessedMessages;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mProcessedMessages:Lcom/android/internal/util/StateMachine$ProcessedMessages;

    .line 640
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 649
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    .line 652
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    .line 683
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    .line 1107
    iput-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    .line 1109
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1110
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1111
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 619
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/util/StateMachine$SmHandler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setProcessedMessagesSize(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getProcessedMessagesSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getProcessedMessagesCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/util/StateMachine$SmHandler;I)Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->getProcessedMessageInfo(I)Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/util/StateMachine$SmHandler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 619
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;
    .registers 2
    .parameter "x0"

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method private final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .registers 9
    .parameter "state"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 1069
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_2f

    .line 1070
    const-string v3, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: E state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",parent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_65

    const-string v2, ""

    :goto_24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_2f
    const/4 v0, 0x0

    .line 1074
    .local v0, parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-eqz p2, :cond_40

    .line 1075
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1076
    .restart local v0       #parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v0, :cond_40

    .line 1078
    invoke-direct {p0, p2, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .line 1081
    :cond_40
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1082
    .local v1, stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v1, :cond_54

    .line 1083
    new-instance v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .end local v1           #stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {v1, p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    .line 1084
    .restart local v1       #stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    :cond_54
    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eqz v2, :cond_6a

    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eq v2, v0, :cond_6a

    .line 1090
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "state already added"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1070
    .end local v0           #parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v1           #stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_65
    invoke-virtual {p2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 1092
    .restart local v0       #parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .restart local v1       #stateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_6a
    iput-object p1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 1093
    iput-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1094
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1095
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_8d

    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_8d
    return-object v1
.end method

.method private final cleanupAfterQuitting()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 810
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->quitting()V

    .line 811
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #getter for: Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine;->access$300(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 813
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 814
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #setter for: Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$302(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 817
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    #setter for: Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$402(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;

    .line 818
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    .line 819
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 820
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mProcessedMessages:Lcom/android/internal/util/StateMachine$ProcessedMessages;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$ProcessedMessages;->cleanup()V

    .line 821
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 822
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 823
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 824
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    .line 825
    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 826
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 827
    return-void
.end method

.method private final completeConstruction()V
    .registers 9

    .prologue
    .line 833
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_b

    const-string v5, "StateMachine"

    const-string v6, "completeConstruction: E"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_b
    const/4 v3, 0x0

    .line 840
    .local v3, maxDepth:I
    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 841
    .local v4, si:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v0, 0x0

    .line 842
    .local v0, depth:I
    move-object v1, v4

    .local v1, i:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :goto_24
    if-eqz v1, :cond_2b

    .line 843
    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 845
    :cond_2b
    if-ge v3, v0, :cond_16

    .line 846
    move v3, v0

    goto :goto_16

    .line 849
    .end local v0           #depth:I
    .end local v1           #i:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v4           #si:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_2f
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_4b

    const-string v5, "StateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "completeConstruction: maxDepth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_4b
    new-array v5, v3, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 852
    new-array v5, v3, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 853
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->setupInitialStateStack()V

    .line 859
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    .line 860
    const/4 v5, -0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 861
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 866
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->performTransitions()V

    .line 868
    iget-boolean v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v5, :cond_72

    const-string v5, "StateMachine"

    const-string v6, "completeConstruction: X"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_72
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 1127
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1e

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deferMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1131
    .local v0, newMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1133
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/android/internal/util/IState;
    .registers 3

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private final getProcessedMessageInfo(I)Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mProcessedMessages:Lcom/android/internal/util/StateMachine$ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$ProcessedMessages;->get(I)Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getProcessedMessagesCount()I
    .registers 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mProcessedMessages:Lcom/android/internal/util/StateMachine$ProcessedMessages;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$ProcessedMessages;->count()I

    move-result v0

    return v0
.end method

.method private final getProcessedMessagesSize()I
    .registers 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mProcessedMessages:Lcom/android/internal/util/StateMachine$ProcessedMessages;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$ProcessedMessages;->size()I

    move-result v0

    return v0
.end method

.method private final invokeEnterMethods(I)V
    .registers 6
    .parameter "stateStackEnteringIndex"

    .prologue
    .line 937
    move v0, p1

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gt v0, v1, :cond_3f

    .line 938
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2c

    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v1}, Lcom/android/internal/util/State;->enter()V

    .line 940
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 942
    :cond_3f
    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .registers 6
    .parameter "commonStateInfo"

    .prologue
    .line 921
    :goto_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_48

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_48

    .line 923
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 925
    .local v0, curState:Lcom/android/internal/util/State;
    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-virtual {v0}, Lcom/android/internal/util/State;->exit()V

    .line 927
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v1, :cond_41

    .line 928
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 929
    :cond_41
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    .line 931
    .end local v0           #curState:Lcom/android/internal/util/State;
    :cond_48
    return-void
.end method

.method private final isDbg()Z
    .registers 2

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .registers 4
    .parameter "msg"

    .prologue
    .line 1144
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mQuitObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .registers 6

    .prologue
    .line 954
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_37

    .line 955
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 956
    .local v0, curMsg:Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_31

    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_31
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 954
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 959
    .end local v0           #curMsg:Landroid/os/Message;
    :cond_37
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 960
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .registers 8

    .prologue
    .line 970
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 971
    .local v2, startingIndex:I
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v0, v3, -0x1

    .line 972
    .local v0, i:I
    move v1, v2

    .line 973
    .local v1, j:I
    :goto_9
    if-ltz v0, :cond_3f

    .line 974
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_32

    const-string v3, "StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_32
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 976
    add-int/lit8 v1, v1, 0x1

    .line 977
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 980
    :cond_3f
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 981
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_86

    .line 982
    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v3, :cond_86

    .line 983
    const-string v3, "StateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",startingIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v6, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v5}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_86
    return v2
.end method

.method private declared-synchronized performTransitions()V
    .registers 6

    .prologue
    .line 756
    monitor-enter p0

    const/4 v1, 0x0

    .line 757
    .local v1, destState:Lcom/android/internal/util/State;
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eqz v3, :cond_27

    .line 759
    const-string v3, "StateMachine"

    const-string v4, "handleMessage: new destination call exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 765
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 772
    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .line 773
    .local v0, commonStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    .line 774
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result v2

    .line 775
    .local v2, stateStackEnteringIndex:I
    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    .line 784
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_24

    goto :goto_2

    .line 756
    .end local v0           #commonStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v2           #stateStackEnteringIndex:I
    :catchall_24
    move-exception v3

    monitor-exit p0

    throw v3

    .line 791
    :cond_27
    if-eqz v1, :cond_30

    .line 792
    :try_start_29
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    if-ne v1, v3, :cond_32

    .line 793
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->cleanupAfterQuitting()V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_24

    .line 804
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    .line 795
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    if-ne v1, v3, :cond_30

    .line 801
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->halting()V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_24

    goto :goto_30
.end method

.method private final processMsg(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 877
    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-gez v2, :cond_e

    .line 878
    const-string v2, "StateMachine"

    const-string/jumbo v3, "processMsg (mStateStackTopIndex < 0)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :goto_d
    return-void

    .line 881
    :cond_e
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v2, v3

    .line 882
    .local v0, curStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_37

    .line 883
    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v4}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_37
    :goto_37
    iget-object v2, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/State;->processMessage(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 889
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 890
    if-nez v0, :cond_65

    .line 894
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    .line 895
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 896
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 908
    :cond_53
    if-eqz v0, :cond_89

    .line 909
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v2, v2, v3

    iget-object v1, v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 910
    .local v1, orgState:Lcom/android/internal/util/State;
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mProcessedMessages:Lcom/android/internal/util/StateMachine$ProcessedMessages;

    iget-object v3, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v2, p1, v3, v1}, Lcom/android/internal/util/StateMachine$ProcessedMessages;->add(Landroid/os/Message;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    goto :goto_d

    .line 900
    .end local v1           #orgState:Lcom/android/internal/util/State;
    :cond_65
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_37

    .line 901
    const-string v2, "StateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v4}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 912
    :cond_89
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mProcessedMessages:Lcom/android/internal/util/StateMachine$ProcessedMessages;

    invoke-virtual {v2, p1, v5, v5}, Lcom/android/internal/util/StateMachine$ProcessedMessages;->add(Landroid/os/Message;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    goto/16 :goto_d
.end method

.method private final quit()V
    .registers 3

    .prologue
    .line 1138
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_c

    const-string v0, "StateMachine"

    const-string/jumbo v1, "quit:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_c
    const/4 v0, -0x1

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mQuitObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1140
    return-void
.end method

.method private final setDbg(Z)V
    .registers 2
    .parameter "dbg"

    .prologue
    .line 1154
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    .line 1155
    return-void
.end method

.method private final setInitialState(Lcom/android/internal/util/State;)V
    .registers 5
    .parameter "initialState"

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_21

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_21
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    .line 1117
    return-void
.end method

.method private final setProcessedMessagesSize(I)V
    .registers 3
    .parameter "maxSize"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mProcessedMessages:Lcom/android/internal/util/StateMachine$ProcessedMessages;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$ProcessedMessages;->setSize(I)V

    .line 1160
    return-void
.end method

.method private final setupInitialStateStack()V
    .registers 5

    .prologue
    .line 1028
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_23

    .line 1029
    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_23
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1034
    .local v0, curStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    :goto_30
    if-eqz v0, :cond_41

    .line 1035
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1036
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1034
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    goto :goto_30

    .line 1040
    :cond_41
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    .line 1042
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    .line 1043
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .registers 6
    .parameter "destState"

    .prologue
    .line 1009
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    .line 1010
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1011
    .local v0, curStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-eqz v0, :cond_1f

    .line 1013
    :cond_d
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1014
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1015
    if-eqz v0, :cond_1f

    iget-boolean v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_d

    .line 1017
    :cond_1f
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_48

    .line 1018
    const-string v1, "StateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_48
    return-object v0
.end method

.method private final transitionTo(Lcom/android/internal/util/IState;)V
    .registers 5
    .parameter "destState"

    .prologue
    .line 1121
    check-cast p1, Lcom/android/internal/util/State;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    .line 1122
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_26

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StateMachine.transitionTo EX destState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    invoke-virtual {v2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_26
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1e

    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: E msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1e
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    .line 732
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v0, :cond_3d

    .line 733
    const-string v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The start method not called, ignore msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_3c
    :goto_3c
    return-void

    .line 741
    :cond_3d
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)V

    .line 742
    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->performTransitions()V

    .line 744
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_3c

    const-string v0, "StateMachine"

    const-string v1, "handleMessage: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method
