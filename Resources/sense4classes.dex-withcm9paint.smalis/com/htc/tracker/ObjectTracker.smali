.class public Lcom/htc/tracker/ObjectTracker;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/tracker/ObjectTracker$Visitor;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/htc/tracker/ObjectTracker;


# instance fields
.field private mKey:Ljava/lang/Object;

.field private final mTempVisitors:Ljava/util/WeakHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashSet",
            "<",
            "Lcom/htc/tracker/ObjectTracker$Visitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisitors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/WeakHashSet",
            "<",
            "Lcom/htc/tracker/ObjectTracker$Visitor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    .line 114
    new-instance v0, Ljava/util/WeakHashSet;

    invoke-direct {v0}, Ljava/util/WeakHashSet;-><init>()V

    iput-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    .line 115
    return-void
.end method

.method public static getInstance()Lcom/htc/tracker/ObjectTracker;
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    if-nez v0, :cond_b

    .line 119
    new-instance v0, Lcom/htc/tracker/ObjectTracker;

    invoke-direct {v0}, Lcom/htc/tracker/ObjectTracker;-><init>()V

    sput-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    .line 120
    :cond_b
    sget-object v0, Lcom/htc/tracker/ObjectTracker;->sInstance:Lcom/htc/tracker/ObjectTracker;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized remove(Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .registers 4
    .parameter "obj"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_21

    if-nez v0, :cond_7

    .line 110
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 102
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashSet;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_21
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1e} :catch_1f

    goto :goto_5

    .line 105
    :catch_1f
    move-exception v0

    goto :goto_5

    .line 99
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKey(Ljava/lang/Object;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .registers 5
    .parameter "obj"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    if-eqz v1, :cond_3e

    .line 55
    const/4 v0, 0x0

    .line 57
    .local v0, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 58
    new-instance v0, Ljava/util/WeakHashSet;

    .end local v0           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    invoke-direct {v0}, Ljava/util/WeakHashSet;-><init>()V

    .line 59
    .restart local v0       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_1c
    invoke-virtual {v0, p1}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1}, Ljava/util/WeakHashSet;->size()I

    move-result v1

    if-lez v1, :cond_31

    .line 66
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashSet;->addAll(Ljava/util/Collection;)Z

    .line 67
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1}, Ljava/util/WeakHashSet;->clear()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_46
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_31} :catch_44

    .line 77
    .end local v0           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 61
    .restart local v0       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    check-cast v0, Ljava/util/WeakHashSet;

    .restart local v0       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    goto :goto_1c

    .line 70
    .end local v0           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_3e
    iget-object v1, p0, Lcom/htc/tracker/ObjectTracker;->mTempVisitors:Ljava/util/WeakHashSet;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_46
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_43} :catch_44

    goto :goto_31

    .line 72
    :catch_44
    move-exception v1

    goto :goto_31

    .line 54
    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized track(Ljava/lang/Object;Lcom/htc/tracker/ObjectTracker$Visitor;)V
    .registers 8
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 33
    monitor-enter p0

    if-eqz p1, :cond_1a

    .line 34
    const/4 v1, 0x0

    .line 36
    .local v1, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :try_start_4
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 37
    new-instance v2, Ljava/util/WeakHashSet;

    invoke-direct {v2}, Ljava/util/WeakHashSet;-><init>()V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_29
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_11} :catch_2c

    .line 38
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .local v2, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :try_start_11
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_31
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_16} :catch_2e

    move-object v1, v2

    .line 42
    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :goto_17
    :try_start_17
    invoke-virtual {v1, p2}, Ljava/util/WeakHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_29
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_1a} :catch_2c

    .line 49
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 40
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    iget-object v4, p0, Lcom/htc/tracker/ObjectTracker;->mKey:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/WeakHashSet;

    move-object v1, v0
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_29
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_28} :catch_2c

    goto :goto_17

    .line 33
    :catchall_29
    move-exception v3

    :goto_2a
    monitor-exit p0

    throw v3

    .line 44
    :catch_2c
    move-exception v3

    goto :goto_1a

    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v2       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :catch_2e
    move-exception v3

    move-object v1, v2

    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    goto :goto_1a

    .line 33
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v2       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :catchall_31
    move-exception v3

    move-object v1, v2

    .end local v2           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .restart local v1       #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    goto :goto_2a
.end method

.method public declared-synchronized visit(Ljava/lang/Object;)V
    .registers 5
    .parameter "key"

    .prologue
    .line 80
    monitor-enter p0

    if-nez p1, :cond_5

    .line 95
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 83
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/htc/tracker/ObjectTracker;->mVisitors:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/WeakHashSet;

    .line 85
    .local v1, visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    invoke-virtual {v1}, Ljava/util/WeakHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/tracker/ObjectTracker$Visitor;

    invoke-interface {v2}, Lcom/htc/tracker/ObjectTracker$Visitor;->visit()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_19

    .line 90
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    .end local v1           #visitors:Ljava/util/WeakHashSet;,"Ljava/util/WeakHashSet<Lcom/htc/tracker/ObjectTracker$Visitor;>;"
    :catch_29
    move-exception v2

    goto :goto_3

    .line 80
    :catchall_2b
    move-exception v2

    monitor-exit p0

    throw v2
.end method
