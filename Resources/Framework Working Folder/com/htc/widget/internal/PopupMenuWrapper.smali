.class public Lcom/htc/widget/internal/PopupMenuWrapper;
.super Ljava/lang/Object;
.source "PopupMenuWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableHtcPopup(Lcom/android/internal/view/menu/MenuPopupHelper;Z)V
    .registers 2
    .parameter "helper"
    .parameter "enable"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->enableHtcPopup(Z)V

    .line 18
    return-void
.end method
