.class Landroid/widget/TextView$InsertionHandleView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$InsertionHandleView;->hidePasteAfterDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$InsertionHandleView;)V
    .registers 2
    .parameter

    .prologue
    .line 12361
    iput-object p1, p0, Landroid/widget/TextView$InsertionHandleView$1;->this$1:Landroid/widget/TextView$InsertionHandleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 12363
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView$1;->this$1:Landroid/widget/TextView$InsertionHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionHandleView;->hidePasteWidow()V

    .line 12364
    return-void
.end method
