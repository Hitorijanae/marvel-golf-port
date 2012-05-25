.class public Lcom/htc/and/touch/NativeJniUnlock;
.super Ljava/lang/Object;
.source "NativeJniUnlock.java"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 7
    :try_start_0
    const-string v1, "JNI"

    const-string v2, "Trying to load libhardware_legacy.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const-string v1, "hardware_legacy"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_c} :catch_d

    .line 12
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_c
    return-void

    .line 9
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_d
    move-exception v0

    .line 10
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "JNI"

    const-string v2, "WARNING: Could not load libhardware_legacy.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native unlock(I)V
.end method
