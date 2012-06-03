.class Lcom/android/internal/telephony/LGEStarRIL$3;
.super Landroid/telephony/PhoneStateListener;
.source "LGEStarRIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/LGEStarRIL;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/LGEStarRIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/LGEStarRIL;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/internal/telephony/LGEStarRIL$3;->this$0:Lcom/android/internal/telephony/LGEStarRIL;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 135
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/LGEStarRIL$3;->this$0:Lcom/android/internal/telephony/LGEStarRIL;

    iget v0, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCallState:I

    if-le p1, v0, :cond_c

    .line 136
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/LGEStarRIL$3;->this$0:Lcom/android/internal/telephony/LGEStarRIL;

    iput p1, v0, Lcom/android/internal/telephony/LGEStarRIL;->mCallState:I

    .line 137
    :cond_c
    return-void
.end method
