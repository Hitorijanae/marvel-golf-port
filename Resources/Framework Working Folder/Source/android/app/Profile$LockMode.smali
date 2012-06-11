.class public Landroid/app/Profile$LockMode;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockMode"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DISABLE:I = 0x2

.field public static final INSECURE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
