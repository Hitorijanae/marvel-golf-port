.class Landroid/widget/TextView$EasyEditSpanController$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$EasyEditSpanController;->onTextChange(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$EasyEditSpanController;


# direct methods
.method constructor <init>(Landroid/widget/TextView$EasyEditSpanController;)V
    .registers 2
    .parameter

    .prologue
    .line 8335
    iput-object p1, p0, Landroid/widget/TextView$EasyEditSpanController$1;->this$1:Landroid/widget/TextView$EasyEditSpanController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 8338
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController$1;->this$1:Landroid/widget/TextView$EasyEditSpanController;

    #calls: Landroid/widget/TextView$EasyEditSpanController;->hide()V
    invoke-static {v0}, Landroid/widget/TextView$EasyEditSpanController;->access$1000(Landroid/widget/TextView$EasyEditSpanController;)V

    .line 8339
    return-void
.end method
