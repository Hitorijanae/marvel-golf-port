.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$InstanceTracker;,
        Landroid/os/StrictMode$InstanceCountViolation;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$LogStackTrace;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$StrictModeCustomViolation;,
        Landroid/os/StrictMode$StrictModeDiskWriteViolation;,
        Landroid/os/StrictMode$StrictModeDiskReadViolation;,
        Landroid/os/StrictMode$StrictModeNetworkViolation;,
        Landroid/os/StrictMode$StrictModeViolation;,
        Landroid/os/StrictMode$VmPolicy;,
        Landroid/os/StrictMode$ThreadPolicy;
    }
.end annotation


# static fields
.field private static final ALL_THREAD_DETECT_BITS:I = 0xf

.field private static final ALL_VM_DETECT_BITS:I = 0x1e00

.field public static final DETECT_CUSTOM:I = 0x8

.field public static final DETECT_DISK_READ:I = 0x2

.field public static final DETECT_DISK_WRITE:I = 0x1

.field public static final DETECT_NETWORK:I = 0x4

.field public static final DETECT_VM_ACTIVITY_LEAKS:I = 0x800

.field public static final DETECT_VM_CLOSABLE_LEAKS:I = 0x400

.field public static final DETECT_VM_CURSOR_LEAKS:I = 0x200

.field private static final DETECT_VM_INSTANCE_LEAKS:I = 0x1000

.field public static final DETECT_VM_MSG_EXP:I = 0x10000

.field public static final DETECT_VM_SET_OOMADJ:I = 0x20000

.field public static final DETECT_VM_SET_THREAD_PRI:I = 0x40000

.field public static final DETECT_VM_TOO_MANY_OBSERVERS:I = 0x200000

.field public static final DETECT_VM_TOO_MANY_THREADS:I = 0x100000

.field public static final DETECT_VM_UI_THREAD_SLEEP:I = 0x80000

.field public static final DISABLE_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.disable"

.field private static final EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final IS_ENG_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_USERDEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final IS_USER_BUILD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOG_V:Z = false

.field private static final MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final MAX_SPAN_TAGS:I = 0x14

.field private static final MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field private static final NO_OP_SPAN:Landroid/os/StrictMode$Span; = null

.field public static final PENALTY_DEATH:I = 0x40

.field public static final PENALTY_DEATH_ON_NETWORK:I = 0x200

.field public static final PENALTY_DIALOG:I = 0x20

.field public static final PENALTY_DROPBOX:I = 0x80

.field public static final PENALTY_FLASH:I = 0x800

.field public static final PENALTY_GATHER:I = 0x100

.field public static final PENALTY_LOG:I = 0x10

.field private static final TAG:Ljava/lang/String; = "StrictMode"

.field private static final THREAD_PENALTY_MASK:I = 0xbf0

.field public static final VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final VM_PENALTY_MASK:I = 0xd0

.field private static final gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsIdlerRegistered:Z

.field private static sLastInstanceCountCheckMillis:J

.field private static final sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static volatile sVmPolicyMask:I

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 115
    const-string v0, "StrictMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    .line 117
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    .line 118
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    .line 120
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->IS_USERDEBUG:Z

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    .line 314
    sput v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 315
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 321
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 761
    new-instance v0, Landroid/os/StrictMode$1;

    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 1096
    new-instance v0, Landroid/os/StrictMode$2;

    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    .line 1104
    new-instance v0, Landroid/os/StrictMode$3;

    invoke-direct {v0}, Landroid/os/StrictMode$3;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    .line 1502
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    .line 1503
    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1504
    new-instance v0, Landroid/os/StrictMode$5;

    invoke-direct {v0}, Landroid/os/StrictMode$5;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1668
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    .line 1875
    new-instance v0, Landroid/os/StrictMode$6;

    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 1899
    new-instance v0, Landroid/os/StrictMode$7;

    invoke-direct {v0}, Landroid/os/StrictMode$7;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    .line 1906
    new-instance v0, Landroid/os/StrictMode$8;

    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    .line 2002
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 323
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    invoke-static {p0}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1200(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 113
    invoke-static {p0}, Landroid/os/StrictMode;->executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1500()J
    .registers 2

    .prologue
    .line 113
    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide v0
.end method

.method static synthetic access$1502(J)J
    .registers 2
    .parameter "x0"

    .prologue
    .line 113
    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide p0
.end method

.method static synthetic access$2200()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 113
    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$600()Landroid/util/Singleton;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 113
    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    return v0
.end method

.method static synthetic access$900()Ljava/lang/ThreadLocal;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .registers 4

    .prologue
    .line 918
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 919
    .local v1, oldPolicyMask:I
    and-int/lit8 v0, v1, -0x3

    .line 920
    .local v0, newPolicyMask:I
    if-eq v0, v1, :cond_b

    .line 921
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 923
    :cond_b
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method public static allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .registers 4

    .prologue
    .line 899
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 900
    .local v1, oldPolicyMask:I
    and-int/lit8 v0, v1, -0x4

    .line 901
    .local v0, newPolicyMask:I
    if-eq v0, v1, :cond_b

    .line 902
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 904
    :cond_b
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method private static amTheSystemServerProcess()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 932
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_a

    .line 946
    .local v0, arr$:[Ljava/lang/StackTraceElement;
    .local v2, i$:I
    .local v3, len$:I
    .local v4, stack:Ljava/lang/Throwable;
    :cond_9
    :goto_9
    return v6

    .line 938
    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #stack:Ljava/lang/Throwable;
    :cond_a
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 939
    .restart local v4       #stack:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 940
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .restart local v0       #arr$:[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_18
    if-ge v2, v3, :cond_9

    aget-object v5, v0, v2

    .line 941
    .local v5, ste:Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 942
    .local v1, clsName:Ljava/lang/String;
    if-eqz v1, :cond_2c

    const-string v7, "com.android.server."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 943
    const/4 v6, 0x1

    goto :goto_9

    .line 940
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method static clearGatheredViolations()V
    .registers 2

    .prologue
    .line 1477
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1478
    return-void
.end method

.method public static conditionallyCheckInstanceCounts()V
    .registers 10

    .prologue
    .line 1484
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v6

    .line 1485
    .local v6, policy:Landroid/os/StrictMode$VmPolicy;
    iget-object v8, v6, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_d

    .line 1500
    :cond_c
    return-void

    .line 1488
    :cond_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 1490
    iget-object v8, v6, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1491
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 1492
    .local v4, klass:Ljava/lang/Class;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1493
    .local v5, limit:I
    const/4 v8, 0x0

    invoke-static {v4, v8}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v2

    .line 1494
    .local v2, instances:J
    int-to-long v8, v5

    cmp-long v8, v2, v8

    if-lez v8, :cond_1e

    .line 1497
    new-instance v7, Landroid/os/StrictMode$InstanceCountViolation;

    invoke-direct {v7, v4, v2, v3, v5}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    .line 1498
    .local v7, tr:Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public static conditionallyEnableDebugLogging()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 955
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getStrictModePolicySet()I

    move-result v2

    .line 962
    .local v2, prop_policy_set:I
    if-nez v2, :cond_c

    .line 963
    invoke-static {v6}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 1027
    :goto_b
    return v6

    .line 966
    :cond_c
    const/4 v7, 0x2

    if-ne v7, v2, :cond_29

    .line 967
    invoke-static {v6}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 969
    const/16 v6, 0x94

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 974
    new-instance v6, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v6}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v6}, Landroid/os/StrictMode$VmPolicy$Builder;->setHtcVmPolicy()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v6

    invoke-static {v6}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    move v6, v5

    .line 976
    goto :goto_b

    .line 979
    :cond_29
    const-string/jumbo v7, "persist.sys.strictmode.visual"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-static {}, Landroid/os/StrictMode;->amTheSystemServerProcess()Z

    move-result v7

    if-nez v7, :cond_4c

    move v0, v5

    .line 981
    .local v0, doFlashes:Z
    :goto_39
    const-string/jumbo v7, "persist.sys.strictmode.disable"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 985
    .local v3, suppress:Z
    if-nez v0, :cond_4e

    sget-boolean v7, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-nez v7, :cond_48

    if-eqz v3, :cond_4e

    .line 986
    :cond_48
    invoke-static {v6}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    goto :goto_b

    .end local v0           #doFlashes:Z
    .end local v3           #suppress:Z
    :cond_4c
    move v0, v6

    .line 979
    goto :goto_39

    .line 993
    .restart local v0       #doFlashes:Z
    .restart local v3       #suppress:Z
    :cond_4e
    sget-boolean v7, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    if-eqz v7, :cond_53

    .line 994
    const/4 v0, 0x1

    .line 998
    :cond_53
    const/4 v4, 0x7

    .line 1002
    .local v4, threadPolicyMask:I
    sget-boolean v7, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-nez v7, :cond_5a

    .line 1003
    or-int/lit16 v4, v4, 0x80

    .line 1005
    :cond_5a
    if-eqz v0, :cond_64

    .line 1006
    or-int/lit16 v4, v4, 0x800

    .line 1008
    sget-boolean v7, Landroid/os/StrictMode;->IS_USERDEBUG:Z

    if-eqz v7, :cond_64

    .line 1009
    or-int/lit8 v4, v4, 0x10

    .line 1013
    :cond_64
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1017
    sget-boolean v7, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-eqz v7, :cond_70

    .line 1018
    invoke-static {v6}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    :goto_6e
    move v6, v5

    .line 1027
    goto :goto_b

    .line 1020
    :cond_70
    new-instance v6, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v6}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v6}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 1021
    .local v1, policyBuilder:Landroid/os/StrictMode$VmPolicy$Builder;
    sget-boolean v6, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    if-eqz v6, :cond_84

    .line 1022
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1024
    :cond_84
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v6

    invoke-static {v6}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1025
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v6

    invoke-static {v6}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    goto :goto_6e
.end method

.method public static decrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 12
    .parameter "klass"

    .prologue
    const/4 v7, 0x0

    .line 2037
    if-nez p0, :cond_4

    .line 2080
    :cond_3
    :goto_3
    return-void

    .line 2042
    :cond_4
    const-class v8, Landroid/os/StrictMode;

    monitor-enter v8

    .line 2043
    :try_start_7
    sget-object v9, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v9, v9, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v9, v9, 0x800

    if-nez v9, :cond_14

    .line 2044
    monitor-exit v8

    goto :goto_3

    .line 2058
    :catchall_11
    move-exception v7

    monitor-exit v8
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v7

    .line 2047
    :cond_14
    :try_start_14
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2048
    .local v1, expected:Ljava/lang/Integer;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_52

    :cond_24
    move v5, v7

    .line 2049
    .local v5, newExpected:I
    :goto_25
    if-nez v5, :cond_59

    .line 2050
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    :goto_2c
    add-int/lit8 v4, v5, 0x1

    .line 2058
    .local v4, limit:I
    monitor-exit v8
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_11

    .line 2061
    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    move-result v0

    .line 2062
    .local v0, actual:I
    if-le v0, v4, :cond_3

    .line 2073
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 2075
    invoke-static {p0, v7}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v2

    .line 2076
    .local v2, instances:J
    int-to-long v7, v4

    cmp-long v7, v2, v7

    if-lez v7, :cond_3

    .line 2077
    new-instance v6, Landroid/os/StrictMode$InstanceCountViolation;

    invoke-direct {v6, p0, v2, v3, v4}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    .line 2078
    .local v6, tr:Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2048
    .end local v0           #actual:I
    .end local v2           #instances:J
    .end local v4           #limit:I
    .end local v5           #newExpected:I
    .end local v6           #tr:Ljava/lang/Throwable;
    :cond_52
    :try_start_52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    goto :goto_25

    .line 2052
    .restart local v5       #newExpected:I
    :cond_59
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, p0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_11

    goto :goto_2c
.end method

.method private static dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 6
    .parameter "violationMaskSubset"
    .parameter "info"

    .prologue
    .line 1426
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1427
    .local v0, outstanding:I
    const/16 v1, 0x14

    if-le v0, v1, :cond_10

    .line 1430
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1456
    :goto_f
    return-void

    .line 1434
    :cond_10
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_2c

    const-string v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropboxing async; in-flight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_2c
    new-instance v1, Landroid/os/StrictMode$4;

    const-string v2, "callActivityManagerForStrictModeDropbox"

    invoke-direct {v1, v2, p0, p1}, Landroid/os/StrictMode$4;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$4;->start()V

    goto :goto_f
.end method

.method public static enableDeathOnNetwork()V
    .registers 3

    .prologue
    .line 1038
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 1039
    .local v1, oldPolicy:I
    or-int/lit8 v2, v1, 0x4

    or-int/lit16 v0, v2, 0x200

    .line 1040
    .local v0, newPolicy:I
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1041
    return-void
.end method

.method public static enableDefaults()V
    .registers 1

    .prologue
    .line 1562
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1566
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1570
    return-void
.end method

.method public static enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .registers 7
    .parameter "name"

    .prologue
    .line 1928
    sget-boolean v3, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-eqz v3, :cond_7

    .line 1929
    sget-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 1956
    :goto_6
    return-object v0

    .line 1931
    :cond_7
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1932
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "name must be non-null and non-empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1934
    :cond_18
    sget-object v3, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ThreadSpanState;

    .line 1935
    .local v2, state:Landroid/os/StrictMode$ThreadSpanState;
    const/4 v0, 0x0

    .line 1936
    .local v0, span:Landroid/os/StrictMode$Span;
    monitor-enter v2

    .line 1937
    :try_start_22
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_89

    .line 1938
    iget-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 1939
    #getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 1940
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 1945
    :goto_34
    #setter for: Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/os/StrictMode$Span;->access$1902(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;

    .line 1946
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    #setter for: Landroid/os/StrictMode$Span;->mCreateMillis:J
    invoke-static {v0, v3, v4}, Landroid/os/StrictMode$Span;->access$2002(Landroid/os/StrictMode$Span;J)J

    .line 1947
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    #setter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->access$1802(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 1948
    const/4 v3, 0x0

    #setter for: Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 1949
    iput-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 1950
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 1951
    #getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 1952
    #getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    #setter for: Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;
    invoke-static {v3, v0}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 1954
    :cond_5c
    sget-boolean v3, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v3, :cond_84

    const-string v3, "StrictMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Span enter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_84
    monitor-exit v2

    goto :goto_6

    :catchall_86
    move-exception v3

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_22 .. :try_end_88} :catchall_86

    throw v3

    .line 1943
    :cond_89
    :try_start_89
    new-instance v1, Landroid/os/StrictMode$Span;

    invoke-direct {v1, v2}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_86

    .end local v0           #span:Landroid/os/StrictMode$Span;
    .local v1, span:Landroid/os/StrictMode$Span;
    move-object v0, v1

    .end local v1           #span:Landroid/os/StrictMode$Span;
    .restart local v0       #span:Landroid/os/StrictMode$Span;
    goto :goto_34
.end method

.method private static executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 1412
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    .line 1413
    .local v0, violationBit:I
    new-instance v1, Landroid/os/StrictMode$StrictModeViolation;

    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    throw v1
.end method

.method public static getPolciyMask()I
    .registers 1

    .prologue
    .line 1618
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    return v0
.end method

.method public static getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .registers 3

    .prologue
    .line 885
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v0
.end method

.method public static getThreadPolicyMask()I
    .registers 1

    .prologue
    .line 874
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->getPolicyMask()I

    move-result v0

    return v0
.end method

.method public static getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .registers 2

    .prologue
    .line 1548
    const-class v1, Landroid/os/StrictMode;

    monitor-enter v1

    .line 1549
    :try_start_3
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    monitor-exit v1

    return-object v0

    .line 1550
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method static hasGatheredViolations()Z
    .registers 1

    .prologue
    .line 1468
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static incrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 5
    .parameter "klass"

    .prologue
    .line 2018
    if-nez p0, :cond_3

    .line 2031
    :goto_2
    return-void

    .line 2022
    :cond_3
    const-class v3, Landroid/os/StrictMode;

    monitor-enter v3

    .line 2023
    :try_start_6
    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_13

    .line 2024
    monitor-exit v3

    goto :goto_2

    .line 2030
    :catchall_10
    move-exception v2

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v2

    .line 2027
    :cond_13
    :try_start_13
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2028
    .local v0, expected:Ljava/lang/Integer;
    if-nez v0, :cond_29

    const/4 v2, 0x1

    :goto_1e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2029
    .local v1, newExpected:Ljava/lang/Integer;
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    monitor-exit v3

    goto :goto_2

    .line 2028
    .end local v1           #newExpected:Ljava/lang/Integer;
    :cond_29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_10

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e
.end method

.method public static noteDiskRead()V
    .registers 2

    .prologue
    .line 1981
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1982
    .local v0, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 1987
    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    :goto_8
    return-void

    .line 1986
    .restart local v0       #policy:Ldalvik/system/BlockGuard$Policy;
    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onReadFromDisk()V

    goto :goto_8
.end method

.method public static noteDiskWrite()V
    .registers 2

    .prologue
    .line 1993
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1994
    .local v0, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 1999
    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    :goto_8
    return-void

    .line 1998
    .restart local v0       #policy:Ldalvik/system/BlockGuard$Policy;
    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onWriteToDisk()V

    goto :goto_8
.end method

.method public static noteSlowCall(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 1969
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 1970
    .local v0, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    .line 1975
    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    :goto_8
    return-void

    .line 1974
    .restart local v0       #policy:Ldalvik/system/BlockGuard$Policy;
    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0           #policy:Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private static onBinderStrictModePolicyChange(I)V
    .registers 1
    .parameter "newPolicy"

    .prologue
    .line 1798
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 1799
    return-void
.end method

.method public static onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "message"
    .parameter "originStack"

    .prologue
    .line 1657
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1658
    return-void
.end method

.method public static onVmPolicyViolated(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "originStack"

    .prologue
    .line 1635
    if-nez p0, :cond_2a

    .line 1636
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 1637
    .local v0, procName:Ljava/lang/String;
    invoke-static {v0}, Landroid/os/StrictMode;->skipWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1644
    .end local v0           #procName:Ljava/lang/String;
    :goto_10
    return-void

    .line 1639
    .restart local v0       #procName:Ljava/lang/String;
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " violate policies."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1643
    .end local v0           #procName:Ljava/lang/String;
    :cond_2a
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 23
    .parameter "message"
    .parameter "originStack"

    .prologue
    .line 1674
    sget v17, Landroid/os/StrictMode;->sVmPolicyMask:I

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-eqz v17, :cond_a5

    const/4 v11, 0x1

    .line 1675
    .local v11, penaltyDropbox:Z
    :goto_b
    sget v17, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit8 v17, v17, 0x40

    if-eqz v17, :cond_a8

    const/4 v10, 0x1

    .line 1676
    .local v10, penaltyDeath:Z
    :goto_12
    sget v17, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit8 v17, v17, 0x10

    if-eqz v17, :cond_ab

    const/4 v12, 0x1

    .line 1677
    .local v12, penaltyLog:Z
    :goto_19
    new-instance v5, Landroid/os/StrictMode$ViolationInfo;

    sget v17, Landroid/os/StrictMode;->sVmPolicyMask:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/Throwable;I)V

    .line 1680
    .local v5, info:Landroid/os/StrictMode$ViolationInfo;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v5, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 1681
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 1682
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 1684
    invoke-virtual {v5}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1685
    .local v4, fingerprint:Ljava/lang/Integer;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1686
    .local v8, now:J
    const-wide/16 v6, 0x0

    .line 1687
    .local v6, lastViolationTime:J
    const-wide v14, 0x7fffffffffffffffL

    .line 1688
    .local v14, timeSinceLastViolationMillis:J
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    monitor-enter v18

    .line 1689
    :try_start_4c
    sget-object v17, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_66

    .line 1690
    sget-object v17, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1691
    sub-long v14, v8, v6

    .line 1693
    :cond_66
    const-wide/16 v19, 0x3e8

    cmp-long v17, v14, v19

    if-lez v17, :cond_79

    .line 1694
    sget-object v17, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1696
    :cond_79
    monitor-exit v18
    :try_end_7a
    .catchall {:try_start_4c .. :try_end_7a} :catchall_ae

    .line 1698
    if-eqz v12, :cond_8d

    const-wide/16 v17, 0x3e8

    cmp-long v17, v14, v17

    if-lez v17, :cond_8d

    .line 1699
    const-string v17, "StrictMode"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1702
    :cond_8d
    sget v17, Landroid/os/StrictMode;->sVmPolicyMask:I

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x1e00

    move/from16 v17, v0

    move/from16 v0, v17

    or-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    .line 1704
    .local v16, violationMaskSubset:I
    if-eqz v11, :cond_b1

    if-nez v10, :cond_b1

    .line 1708
    move/from16 v0, v16

    invoke-static {v0, v5}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1742
    :cond_a4
    :goto_a4
    return-void

    .line 1674
    .end local v4           #fingerprint:Ljava/lang/Integer;
    .end local v5           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v6           #lastViolationTime:J
    .end local v8           #now:J
    .end local v10           #penaltyDeath:Z
    .end local v11           #penaltyDropbox:Z
    .end local v12           #penaltyLog:Z
    .end local v14           #timeSinceLastViolationMillis:J
    .end local v16           #violationMaskSubset:I
    :cond_a5
    const/4 v11, 0x0

    goto/16 :goto_b

    .line 1675
    .restart local v11       #penaltyDropbox:Z
    :cond_a8
    const/4 v10, 0x0

    goto/16 :goto_12

    .line 1676
    .restart local v10       #penaltyDeath:Z
    :cond_ab
    const/4 v12, 0x0

    goto/16 :goto_19

    .line 1696
    .restart local v4       #fingerprint:Ljava/lang/Integer;
    .restart local v5       #info:Landroid/os/StrictMode$ViolationInfo;
    .restart local v6       #lastViolationTime:J
    .restart local v8       #now:J
    .restart local v12       #penaltyLog:Z
    .restart local v14       #timeSinceLastViolationMillis:J
    :catchall_ae
    move-exception v17

    :try_start_af
    monitor-exit v18
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v17

    .line 1712
    .restart local v16       #violationMaskSubset:I
    :cond_b1
    if-eqz v11, :cond_d6

    const-wide/16 v17, 0x0

    cmp-long v17, v6, v17

    if-nez v17, :cond_d6

    .line 1717
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v13

    .line 1723
    .local v13, savedPolicyMask:I
    const/16 v17, 0x0

    :try_start_bf
    invoke-static/range {v17 .. v17}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1725
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v17

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-interface {v0, v1, v2, v5}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_d3
    .catchall {:try_start_bf .. :try_end_d3} :catchall_f9
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_d3} :catch_ec

    .line 1733
    :goto_d3
    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1737
    .end local v13           #savedPolicyMask:I
    :cond_d6
    if-eqz v10, :cond_a4

    .line 1738
    sget-object v17, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v18, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1739
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/Process;->killProcess(I)V

    .line 1740
    const/16 v17, 0xa

    invoke-static/range {v17 .. v17}, Ljava/lang/System;->exit(I)V

    goto :goto_a4

    .line 1729
    .restart local v13       #savedPolicyMask:I
    :catch_ec
    move-exception v3

    .line 1730
    .local v3, e:Landroid/os/RemoteException;
    :try_start_ed
    const-string v17, "StrictMode"

    const-string v18, "RemoteException trying to handle StrictMode violation"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f8
    .catchall {:try_start_ed .. :try_end_f8} :catchall_f9

    goto :goto_d3

    .line 1733
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_f9
    move-exception v17

    invoke-static {v13}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v17
.end method

.method public static onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "originStack"

    .prologue
    .line 1664
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1665
    return-void
.end method

.method private static parsePolicyFromMessage(Ljava/lang/String;)I
    .registers 6
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 1057
    if-eqz p0, :cond_c

    const-string/jumbo v4, "policy="

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1068
    :cond_c
    :goto_c
    return v3

    .line 1060
    :cond_d
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1061
    .local v2, spaceIndex:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    .line 1064
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1066
    .local v1, policyString:Ljava/lang/String;
    :try_start_1b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_24

    move-result v3

    goto :goto_c

    .line 1067
    :catch_24
    move-exception v0

    .line 1068
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_c
.end method

.method private static parseViolationFromMessage(Ljava/lang/String;)I
    .registers 9
    .parameter "message"

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1076
    if-nez p0, :cond_5

    .line 1092
    :cond_4
    :goto_4
    return v5

    .line 1079
    :cond_5
    const-string/jumbo v6, "violation="

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1080
    .local v3, violationIndex:I
    if-eq v3, v7, :cond_4

    .line 1083
    const-string/jumbo v6, "violation="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v3, v6

    .line 1084
    .local v2, numberStartIndex:I
    const/16 v6, 0x20

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1085
    .local v1, numberEndIndex:I
    if-ne v1, v7, :cond_23

    .line 1086
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1088
    :cond_23
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1090
    .local v4, violationString:Ljava/lang/String;
    :try_start_27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2e} :catch_30

    move-result v5

    goto :goto_4

    .line 1091
    :catch_30
    move-exception v0

    .line 1092
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_4
.end method

.method static readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .registers 14
    .parameter "p"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1770
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 1771
    .local v7, sw:Ljava/io/StringWriter;
    new-instance v10, Landroid/os/StrictMode$LogStackTrace;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/os/StrictMode$LogStackTrace;-><init>(Landroid/os/StrictMode$1;)V

    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v10, v11}, Landroid/os/StrictMode$LogStackTrace;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1772
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1774
    .local v4, ourStack:Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v6

    .line 1775
    .local v6, policyMask:I
    and-int/lit16 v10, v6, 0x100

    if-eqz v10, :cond_7b

    move v0, v8

    .line 1777
    .local v0, currentlyGathering:Z
    :goto_22
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1778
    .local v3, numViolations:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    if-ge v1, v3, :cond_7f

    .line 1779
    sget-boolean v10, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v10, :cond_46

    const-string v10, "StrictMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "strict mode violation stacks read from binder call.  i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_46
    new-instance v2, Landroid/os/StrictMode$ViolationInfo;

    if-nez v0, :cond_7d

    move v10, v8

    :goto_4b
    invoke-direct {v2, p0, v10}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 1781
    .local v2, info:Landroid/os/StrictMode$ViolationInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v12, v11, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "# via Binder call with stack:\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 1782
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v5

    .line 1783
    .local v5, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v10, v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v10, :cond_78

    .line 1784
    check-cast v5, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v5           #policy:Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v5, v2}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1778
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .end local v0           #currentlyGathering:Z
    .end local v1           #i:I
    .end local v2           #info:Landroid/os/StrictMode$ViolationInfo;
    .end local v3           #numViolations:I
    :cond_7b
    move v0, v9

    .line 1775
    goto :goto_22

    .restart local v0       #currentlyGathering:Z
    .restart local v1       #i:I
    .restart local v3       #numViolations:I
    :cond_7d
    move v10, v9

    .line 1780
    goto :goto_4b

    .line 1787
    :cond_7f
    return-void
.end method

.method private static setBlockGuardPolicy(I)V
    .registers 4
    .parameter "policyMask"

    .prologue
    .line 800
    if-nez p0, :cond_8

    .line 801
    sget-object v2, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v2}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 811
    :goto_7
    return-void

    .line 804
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    .line 805
    .local v1, policy:Ldalvik/system/BlockGuard$Policy;
    instance-of v2, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v2, :cond_19

    .line 806
    new-instance v2, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-direct {v2, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;-><init>(I)V

    invoke-static {v2}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    goto :goto_7

    :cond_19
    move-object v0, v1

    .line 808
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 809
    .local v0, androidPolicy:Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setPolicyMask(I)V

    goto :goto_7
.end method

.method private static setCloseGuardEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 815
    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    move-result-object v0

    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    if-nez v0, :cond_11

    .line 816
    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode$1;)V

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    .line 818
    :cond_11
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 819
    return-void
.end method

.method public static setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .registers 2
    .parameter "policy"

    .prologue
    .line 783
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 784
    return-void
.end method

.method private static setThreadPolicyMask(I)V
    .registers 1
    .parameter "policyMask"

    .prologue
    .line 792
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 795
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    .line 796
    return-void
.end method

.method public static setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .registers 5
    .parameter "policy"

    .prologue
    .line 1524
    const-class v3, Landroid/os/StrictMode;

    monitor-enter v3

    .line 1525
    :try_start_3
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1526
    iget v2, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    sput v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 1527
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v2

    invoke-static {v2}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 1529
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1530
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_2e

    .line 1531
    iget-object v1, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 1532
    .local v1, mq:Landroid/os/MessageQueue;
    iget-object v2, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_26

    sget v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v2, v2, 0xd0

    if-nez v2, :cond_30

    .line 1534
    :cond_26
    sget-object v2, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1535
    const/4 v2, 0x0

    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1541
    .end local v1           #mq:Landroid/os/MessageQueue;
    :cond_2e
    :goto_2e
    monitor-exit v3

    .line 1542
    return-void

    .line 1536
    .restart local v1       #mq:Landroid/os/MessageQueue;
    :cond_30
    sget-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    if-nez v2, :cond_2e

    .line 1537
    sget-object v2, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1538
    const/4 v2, 0x1

    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    goto :goto_2e

    .line 1541
    .end local v0           #looper:Landroid/os/Looper;
    .end local v1           #mq:Landroid/os/MessageQueue;
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v2
.end method

.method private static skipWhiteList(Ljava/lang/String;)Z
    .registers 2
    .parameter "procName"

    .prologue
    .line 1623
    const-string/jumbo v0, "system_server"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1624
    const/4 v0, 0x1

    .line 1626
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static tooManyViolationsThisLoop()Z
    .registers 2

    .prologue
    .line 1111
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static trackActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "instance"

    .prologue
    .line 2011
    new-instance v0, Landroid/os/StrictMode$InstanceTracker;

    invoke-direct {v0, p0}, Landroid/os/StrictMode$InstanceTracker;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static vmClosableObjectLeaksEnabled()Z
    .registers 1

    .prologue
    .line 1650
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static vmIllegalSetOomAdjEnabled()Z
    .registers 2

    .prologue
    .line 1589
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static vmIllegalSetThreadPriorityEnabled()Z
    .registers 2

    .prologue
    .line 1595
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static vmMsgDispatchExpiredEnabled()Z
    .registers 2

    .prologue
    .line 1583
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static vmSqliteObjectLeaksEnabled()Z
    .registers 1

    .prologue
    .line 1576
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static vmTooManyContentObserversEnabled()Z
    .registers 2

    .prologue
    .line 1613
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static vmTooManyThreadsEnabled()Z
    .registers 2

    .prologue
    .line 1607
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static vmUIThreadSleepEnabled()Z
    .registers 2

    .prologue
    .line 1601
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    .line 1748
    sget-object v2, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1749
    .local v1, violations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v1, :cond_15

    .line 1750
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    :goto_e
    sget-object v2, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1760
    return-void

    .line 1752
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1753
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 1754
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v2, p0, v3}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1753
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1756
    :cond_2f
    sget-boolean v2, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v2, :cond_50

    const-string v2, "StrictMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wrote violations to response parcel; num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_50
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_e
.end method
