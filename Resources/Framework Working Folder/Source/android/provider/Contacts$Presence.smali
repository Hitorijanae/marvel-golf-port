.class public final Landroid/provider/Contacts$Presence;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PresenceColumns;
.implements Landroid/provider/Contacts$PeopleColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Presence"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PERSON_ID:Ljava/lang/String; = "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 3381
    const-string v0, "content://contacts/presence"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$Presence;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3374
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPresenceIconResourceId(I)I
    .registers 2
    .parameter "status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3401
    packed-switch p0, :pswitch_data_18

    .line 3417
    const v0, 0x108006a

    :goto_6
    return v0

    .line 3403
    :pswitch_7
    const v0, 0x108006b

    goto :goto_6

    .line 3407
    :pswitch_b
    const v0, 0x1080067

    goto :goto_6

    .line 3410
    :pswitch_f
    const v0, 0x1080068

    goto :goto_6

    .line 3413
    :pswitch_13
    const v0, 0x1080069

    goto :goto_6

    .line 3401
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method

.method public static final setPresenceIcon(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "icon"
    .parameter "serverStatus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3430
    invoke-static {p1}, Landroid/provider/Contacts$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3431
    return-void
.end method