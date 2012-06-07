.class public final Landroid/provider/HtcContactsContract$HtcEvent;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HtcEvent"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/htc_event_v2"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/htc_event_v2"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_REF_ID:Ljava/lang/String; = "data3"

.field public static final DAY_OF_MONTH:Ljava/lang/String; = "data14"

.field public static final DESCRIPTION:Ljava/lang/String; = "data7"

.field public static final END_TIME:Ljava/lang/String; = "data5"

.field public static final EVENT_DB_ID:Ljava/lang/String; = "data1"

.field public static final IS_ALL_DAY:Ljava/lang/String; = "data11"

.field public static final MONTH:Ljava/lang/String; = "data13"

.field public static final NOTIFICATION_1_DAY:I = 0x2

.field public static final NOTIFICATION_30_DAYS:I = 0x8

.field public static final NOTIFICATION_7_DAYS:I = 0x4

.field public static final NOTIFICATION_NONE:I = 0x1

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "data9"

.field public static final NOT_ALL_DAY:I = 0x0

.field public static final RECURRENCE_DAILY:I = 0x2

.field public static final RECURRENCE_MONTHLY:I = 0x4

.field public static final RECURRENCE_ONCE:I = 0x1

.field public static final RECURRENCE_QUARTERLY:I = 0x5

.field public static final RECURRENCE_TYPE:Ljava/lang/String; = "data8"

.field public static final RECURRENCE_WEEKLY:I = 0x3

.field public static final RECURRENCE_YEARLY:I = 0x6

.field public static final START_TIME:Ljava/lang/String; = "data4"

.field public static final TIMEZONE:Ljava/lang/String; = "data10"

.field public static final TITLE:Ljava/lang/String; = "data6"

.field public static final TYPE:Ljava/lang/String; = "data2"

.field public static final TYPE_ANNIVERSARY:I = 0x2

.field public static final TYPE_BIRTHDAY:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final YEAR:Ljava/lang/String; = "data12"

.field public static final YES_ALL_DAY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 355
    sget-object v0, Landroid/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "htc_events"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcContactsContract$HtcEvent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 339
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeResource(Ljava/lang/Integer;)I
    .registers 3
    .parameter "type"

    .prologue
    const v0, 0x10402b7

    .line 487
    if-nez p0, :cond_6

    .line 495
    :goto_5
    :pswitch_5
    return v0

    .line 490
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    goto :goto_5

    .line 493
    :pswitch_e
    const v0, 0x10402b5

    goto :goto_5

    .line 492
    :pswitch_12
    const v0, 0x10402b6

    goto :goto_5

    .line 490
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method