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
    .line 62
    invoke-direct {p0}, Landroid/database/IContentObserver$Stub;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 64
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 68
    .local v0, contentObserver:Landroid/database/ContentObserver;
    if-eqz v0, :cond_9

    .line 69
    invoke-virtual {v0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v1

    .line 71
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
    .line 82
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 83
    .local v0, contentObserver:Landroid/database/ContentObserver;
    if-eqz v0, :cond_7

    .line 84
    invoke-virtual {v0, p1}, Landroid/database/ContentObserver;->dispatchChange(Z)V

    .line 86
    :cond_7
    return-void
.end method

.method public onChangeUri(Landroid/net/Uri;Z)V
    .registers 4
    .parameter "uri"
    .parameter "selfChange"

    .prologue
    .line 75
    iget-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 76
    .local v0, contentObserver:Landroid/database/ContentObserver;
    if-eqz v0, :cond_7

    .line 77
    invoke-virtual {v0, p1, p2}, Landroid/database/ContentObserver;->dispatchChange(Landroid/net/Uri;Z)V

    .line 79
    :cond_7
    return-void
.end method

.method public releaseContentObserver()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/ContentObserver$Transport;->mContentObserver:Landroid/database/ContentObserver;

    .line 90
    return-void
.end method
