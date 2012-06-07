.class final Landroid/database/ContentObserver$Transport;
.super Landroid/database/IContentObserver$Stub;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/database/ContentObserver;)V
    .registers 2
    .parameter "contentObserver"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/database/IContentObserver$Stub;-><init>()V

    .line 69
    iput-object p1, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 70
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 74
    .local v0, contentObserver:Landroid/database/ContentObserver;
    if-eqz v0, :cond_9

    .line 75
    invoke-virtual {v0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v1

    .line 77
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 82
    .local v0, contentObserver:Landroid/database/ContentObserver;
    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {v0, p1}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 85
    :cond_7
    return-void
.end method

.method public releaseContentObserver()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 89
    return-void
.end method
