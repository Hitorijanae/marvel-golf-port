.class final Landroid/app/ActivityThread$ProviderRefCount;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderRefCount"
.end annotation


# instance fields
.field public count:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "pCount"

    .prologue
    .line 2863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2864
    iput p1, p0, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    .line 2865
    return-void
.end method
