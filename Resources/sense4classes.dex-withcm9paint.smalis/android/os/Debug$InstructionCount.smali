.class public Landroid/os/Debug$InstructionCount;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstructionCount"
.end annotation


# static fields
.field private static final NUM_INSTR:I


# instance fields
.field private mCounts:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1013
    sget v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_PACKED_VALUE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1018
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    sget v0, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    .line 1020
    return-void
.end method


# virtual methods
.method public collect()Z
    .registers 3

    .prologue
    .line 1044
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->stopInstructionCounting()V

    .line 1045
    iget-object v1, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    invoke-static {v1}, Ldalvik/system/VMDebug;->getInstructionCount([I)V
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_8} :catch_a

    .line 1049
    const/4 v1, 0x1

    :goto_9
    return v1

    .line 1046
    :catch_a
    move-exception v0

    .line 1047
    .local v0, uoe:Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public globalMethodInvocations()I
    .registers 4

    .prologue
    .line 1071
    const/4 v0, 0x0

    .line 1073
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    if-ge v1, v2, :cond_14

    .line 1074
    invoke-static {v1}, Ldalvik/bytecode/OpcodeInfo;->isInvoke(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1075
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1073
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1079
    :cond_14
    return v0
.end method

.method public globalTotal()I
    .registers 4

    .prologue
    .line 1057
    const/4 v0, 0x0

    .line 1059
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    sget v2, Landroid/os/Debug$InstructionCount;->NUM_INSTR:I

    if-ge v1, v2, :cond_e

    .line 1060
    iget-object v2, p0, Landroid/os/Debug$InstructionCount;->mCounts:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 1059
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1063
    :cond_e
    return v0
.end method

.method public resetAndStart()Z
    .registers 3

    .prologue
    .line 1030
    :try_start_0
    invoke-static {}, Ldalvik/system/VMDebug;->startInstructionCounting()V

    .line 1031
    invoke-static {}, Ldalvik/system/VMDebug;->resetInstructionCount()V
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_6} :catch_8

    .line 1035
    const/4 v1, 0x1

    :goto_7
    return v1

    .line 1032
    :catch_8
    move-exception v0

    .line 1033
    .local v0, uoe:Ljava/lang/UnsupportedOperationException;
    const/4 v1, 0x0

    goto :goto_7
.end method
