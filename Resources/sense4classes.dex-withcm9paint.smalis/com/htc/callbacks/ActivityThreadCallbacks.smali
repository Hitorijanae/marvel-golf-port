.class public Lcom/htc/callbacks/ActivityThreadCallbacks;
.super Ljava/lang/Object;
.source "ActivityThreadCallbacks.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCallActivityOnPause(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 13
    return-void
.end method

.method public afterPerformResume(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 21
    return-void
.end method
