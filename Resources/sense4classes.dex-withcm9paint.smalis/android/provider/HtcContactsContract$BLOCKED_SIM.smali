.class public final Landroid/provider/HtcContactsContract$BLOCKED_SIM;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BLOCKED_SIM"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final RECORD_NUMBER:Ljava/lang/String; = "record_number"

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final TABLE_NAME:Ljava/lang/String; = "blocked_sim_contact"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1562
    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "blocked_sim_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$BLOCKED_SIM;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1556
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
