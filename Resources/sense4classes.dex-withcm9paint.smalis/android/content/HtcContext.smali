.class public abstract Landroid/content/HtcContext;
.super Landroid/content/Context;
.source "HtcContext.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Landroid/content/HtcContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/HtcContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/Context;-><init>()V

    return-void
.end method

.method public static createPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .registers 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 62
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 65
    const/4 v1, 0x3

    :try_start_5
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object p0

    .line 73
    :cond_9
    :goto_9
    return-object p0

    .line 69
    :catch_a
    move-exception v0

    .line 70
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Landroid/content/HtcContext;->TAG:Ljava/lang/String;

    const-string v2, "The package name can not be found."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method
