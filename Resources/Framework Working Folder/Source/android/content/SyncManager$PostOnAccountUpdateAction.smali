.class public abstract Landroid/content/SyncManager$PostOnAccountUpdateAction;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PostOnAccountUpdateAction"
.end annotation


# instance fields
.field public aAccount:Landroid/accounts/Account;

.field public aAuthority:Ljava/lang/String;

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method public constructor <init>(Landroid/content/SyncManager;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-object p1, p0, Landroid/content/SyncManager$PostOnAccountUpdateAction;->this$0:Landroid/content/SyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object v0, p0, Landroid/content/SyncManager$PostOnAccountUpdateAction;->aAccount:Landroid/accounts/Account;

    .line 170
    iput-object v0, p0, Landroid/content/SyncManager$PostOnAccountUpdateAction;->aAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .prologue
    .line 172
    return-void
.end method
