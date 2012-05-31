.class public Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;
.super Ljava/lang/Object;
.source "HtcQuickSelectionWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/quickselection/HtcQuickSelectionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionSet"
.end annotation


# instance fields
.field private actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;",
            ">;"
        }
    .end annotation
.end field

.field private ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;


# direct methods
.method public constructor <init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;)V
    .registers 3
    .parameter

    .prologue
    .line 763
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;-><init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;I)V

    .line 764
    return-void
.end method

.method public constructor <init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;I)V
    .registers 4
    .parameter
    .parameter "size"

    .prologue
    .line 771
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 772
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    .line 774
    return-void
.end method

.method static synthetic access$000(Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public AddAction(Ljava/lang/Object;Ljava/lang/String;Landroid/view/View$OnClickListener;)Z
    .registers 7
    .parameter "id"
    .parameter "descript"
    .parameter "listener"

    .prologue
    .line 800
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 801
    const/4 v0, 0x0

    .line 806
    :goto_9
    return v0

    .line 803
    :cond_a
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;

    iget-object v2, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->this$0:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;-><init>(Lcom/htc/quickselection/HtcQuickSelectionWindow;Ljava/lang/Object;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public count()I
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAction(I)Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;
    .registers 3
    .parameter "i"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/quickselection/HtcQuickSelectionWindow$Action;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public removeAction(Ljava/lang/Object;)Z
    .registers 4
    .parameter "id"

    .prologue
    .line 815
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 816
    const/4 v1, 0x0

    .line 822
    :goto_9
    return v1

    .line 818
    :cond_a
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 819
    .local v0, i:I
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->ids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 820
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->actions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 822
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickSelectionWindow$ActionSet;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 783
    return-void
.end method
