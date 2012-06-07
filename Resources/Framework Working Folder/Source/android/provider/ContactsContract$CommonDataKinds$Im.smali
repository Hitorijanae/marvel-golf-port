.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final PROTOCOL_YILIAO:I = 0x64

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6049
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6143
    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 6147
    .end local p2
    :goto_9
    return-object p2

    .line 6146
    .restart local p2
    :cond_a
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 6147
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_9
.end method

.method public static final getProtocolLabelResource(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 6119
    sparse-switch p0, :sswitch_data_2e

    .line 6132
    const v0, 0x10402c5

    :goto_6
    return v0

    .line 6120
    :sswitch_7
    const v0, 0x10402c6

    goto :goto_6

    .line 6121
    :sswitch_b
    const v0, 0x10402c7

    goto :goto_6

    .line 6122
    :sswitch_f
    const v0, 0x10402c8

    goto :goto_6

    .line 6123
    :sswitch_13
    const v0, 0x10402c9

    goto :goto_6

    .line 6124
    :sswitch_17
    const v0, 0x10402ca

    goto :goto_6

    .line 6125
    :sswitch_1b
    const v0, 0x10402cb

    goto :goto_6

    .line 6126
    :sswitch_1f
    const v0, 0x10402cc

    goto :goto_6

    .line 6127
    :sswitch_23
    const v0, 0x10402cd

    goto :goto_6

    .line 6128
    :sswitch_27
    const v0, 0x10402ce

    goto :goto_6

    .line 6130
    :sswitch_2b
    const/high16 v0, 0x404

    goto :goto_6

    .line 6119
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_b
        0x2 -> :sswitch_f
        0x3 -> :sswitch_13
        0x4 -> :sswitch_17
        0x5 -> :sswitch_1b
        0x6 -> :sswitch_1f
        0x7 -> :sswitch_23
        0x8 -> :sswitch_27
        0x64 -> :sswitch_2b
    .end sparse-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6106
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 6110
    .end local p2
    :goto_8
    return-object p2

    .line 6109
    .restart local p2
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 6110
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_8
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2
    .parameter "type"

    .prologue
    .line 6091
    packed-switch p0, :pswitch_data_14

    .line 6095
    const v0, 0x10402c1

    :goto_6
    return v0

    .line 6092
    :pswitch_7
    const v0, 0x10402c2

    goto :goto_6

    .line 6093
    :pswitch_b
    const v0, 0x10402c3

    goto :goto_6

    .line 6094
    :pswitch_f
    const v0, 0x10402c4

    goto :goto_6

    .line 6091
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
