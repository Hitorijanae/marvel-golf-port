.class public final enum Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;
.super Ljava/lang/Enum;
.source "FourGManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/net/FourG/FourGManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RtdRequestedSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

.field public static final enum RTD_SPEC_ALL:Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

.field public static final enum RTD_SPEC_NONE:Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

.field public static final enum RTD_SPEC_SERVING_BS:Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1163
    new-instance v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    const-string v1, "RTD_SPEC_NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;->RTD_SPEC_NONE:Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    .line 1169
    new-instance v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    const-string v1, "RTD_SPEC_SERVING_BS"

    invoke-direct {v0, v1, v3}, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;->RTD_SPEC_SERVING_BS:Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    .line 1175
    new-instance v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    const-string v1, "RTD_SPEC_ALL"

    invoke-direct {v0, v1, v4}, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;->RTD_SPEC_ALL:Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    .line 1158
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    sget-object v1, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;->RTD_SPEC_NONE:Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;->RTD_SPEC_SERVING_BS:Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;->RTD_SPEC_ALL:Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;->$VALUES:[Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;
    .registers 2
    .parameter "name"

    .prologue
    .line 1158
    const-class v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    return-object v0
.end method

.method public static values()[Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;
    .registers 1

    .prologue
    .line 1158
    sget-object v0, Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;->$VALUES:[Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    invoke-virtual {v0}, [Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/net/FourG/FourGManager$RtdRequestedSpec;

    return-object v0
.end method
