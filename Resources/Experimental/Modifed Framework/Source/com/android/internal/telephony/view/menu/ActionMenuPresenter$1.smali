.class Lcom/android/internal/view/menu/ActionMenuPresenter$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .registers 2
    .parameter

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 881
    if-eqz p1, :cond_12

    instance-of v0, p1, Lcom/android/internal/view/menu/OverflowMenuView;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 882
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$1;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 883
    :cond_12
    return-void
.end method
