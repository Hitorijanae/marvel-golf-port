.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"

# interfaces
.implements Lcom/android/internal/widget/HtcIfLockPatternUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"

.field private static final DEBUG:Z = false

.field private static final DEBUG_Utils:Z = false

.field private static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"

.field private static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field private static final OPTION_ENABLE_FACELOCK:Ljava/lang/String; = "enable_facelock"

.field private static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final SYSTEM_PROPERTY_GUEST_MODE_SECURITY:Ljava/lang/String; = "sys.guest_mode_security.enabled"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sPasswordObserver:Landroid/os/FileObserver;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 185
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v2, :cond_90

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/system/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "gesture.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "password.key"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    .line 191
    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-lez v2, :cond_91

    move v2, v3

    :goto_6b
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v5, v5, v8

    if-lez v5, :cond_93

    :goto_7f
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 193
    const/16 v1, 0x388

    .line 195
    .local v1, fileObserverMask:I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    .line 196
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 198
    .end local v0           #dataSystemDirectory:Ljava/lang/String;
    .end local v1           #fileObserverMask:I
    :cond_90
    return-void

    .restart local v0       #dataSystemDirectory:Ljava/lang/String;
    :cond_91
    move v2, v4

    .line 191
    goto :goto_6b

    :cond_93
    move v3, v4

    .line 192
    goto :goto_7f
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static computePasswordComplexity(Ljava/lang/String;)I
    .registers 5
    .parameter "password"

    .prologue
    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, complex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 652
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_17

    .line 653
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_14

    .line 654
    add-int/lit8 v0, v0, 0x1

    .line 652
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 658
    :cond_17
    return v0
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 6
    .parameter "password"

    .prologue
    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 624
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 625
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 626
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 627
    const/4 v0, 0x1

    .line 625
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 629
    :cond_17
    const/4 v1, 0x1

    goto :goto_14

    .line 633
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 634
    const/high16 v4, 0x5

    .line 642
    :goto_1f
    return v4

    .line 636
    :cond_20
    if-eqz v1, :cond_25

    .line 637
    const/high16 v4, 0x4

    goto :goto_1f

    .line 639
    :cond_25
    if-eqz v0, :cond_2a

    .line 640
    const/high16 v4, 0x2

    goto :goto_1f

    .line 642
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private finishBiometricWeak()V
    .registers 4

    .prologue
    .line 1312
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1317
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupEndScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1320
    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .registers 5
    .parameter "secureSettingKey"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1218
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public static getDevicePasswordComplexCharacterGroup(Ljava/lang/String;)I
    .registers 14
    .parameter "password"

    .prologue
    const/4 v9, 0x0

    .line 703
    const/4 v8, 0x0

    .line 704
    .local v8, uppercase:I
    const/4 v5, 0x0

    .line 705
    .local v5, lowercase:I
    const/4 v6, 0x0

    .line 706
    .local v6, numbers:I
    const/4 v7, 0x0

    .line 707
    .local v7, symbols:I
    const/4 v1, 0x0

    .line 708
    .local v1, CharacterGroup:I
    const/4 v0, 0x0

    .line 712
    .local v0, AlphaNumeric:I
    const/4 v10, 0x0

    :try_start_8
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C
    :try_end_b
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_8 .. :try_end_b} :catch_21

    move-result v2

    .line 718
    .local v2, c:C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_4d

    .line 719
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 720
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 721
    const/4 v8, 0x1

    .line 718
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 713
    .end local v2           #c:C
    .end local v4           #i:I
    :catch_21
    move-exception v3

    .line 714
    .local v3, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v10, "LockPatternUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Check ComplexGroup - StringIndexOutOfBoundsException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v3           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_3a
    :goto_3a
    return v9

    .line 722
    .restart local v2       #c:C
    .restart local v4       #i:I
    :cond_3b
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 723
    const/4 v5, 0x1

    goto :goto_1e

    .line 724
    :cond_43
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 725
    const/4 v6, 0x1

    goto :goto_1e

    .line 727
    :cond_4b
    const/4 v7, 0x1

    goto :goto_1e

    .line 731
    :cond_4d
    add-int v10, v8, v5

    add-int v0, v10, v6

    .line 732
    add-int v1, v0, v7

    .line 734
    if-eqz v0, :cond_3a

    move v9, v1

    .line 737
    goto :goto_3a
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 6
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSalt()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 990
    const-string/jumbo v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 991
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_24

    .line 993
    :try_start_d
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 994
    const-string/jumbo v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 995
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_24} :catch_29

    .line 1001
    :cond_24
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 996
    :catch_29
    move-exception v0

    .line 998
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "secureSettingKey"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isGuestMode()Z
    .registers 2

    .prologue
    .line 472
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isGuestMode()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 475
    :goto_8
    return v0

    .line 473
    :catch_9
    move-exception v0

    .line 475
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isSimpleDevicePassword(Ljava/lang/String;)Z
    .registers 11
    .parameter "password"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, RepeatCount:I
    const/4 v1, 0x1

    .line 673
    .local v1, SequentialCount:I
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C
    :try_end_8
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_8} :catch_1c

    move-result v5

    .line 679
    .local v5, lastchar:C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_44

    .line 680
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 681
    .local v2, c:C
    if-ne v2, v5, :cond_37

    .line 682
    add-int/lit8 v0, v0, 0x1

    .line 688
    :goto_18
    move v5, v2

    .line 679
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 674
    .end local v2           #c:C
    .end local v4           #i:I
    .end local v5           #lastchar:C
    :catch_1c
    move-exception v3

    .line 675
    .local v3, e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v6, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check isSimple - StringIndexOutOfBoundsException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 693
    .end local v3           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_36
    :goto_36
    return v6

    .line 683
    .restart local v2       #c:C
    .restart local v4       #i:I
    .restart local v5       #lastchar:C
    :cond_37
    sub-int v8, v2, v5

    if-ne v8, v7, :cond_36

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 690
    .end local v2           #c:C
    :cond_44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v0, v8, :cond_50

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v1, v8, :cond_36

    :cond_50
    move v6, v7

    .line 691
    goto :goto_36
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 970
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 971
    const/4 v1, 0x0

    .line 985
    :goto_3
    return-object v1

    .line 974
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 975
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 976
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 977
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 978
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 976
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 981
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 982
    .local v3, md:Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 983
    .local v1, hash:[B
    goto :goto_3

    .line 984
    .end local v1           #hash:[B
    .end local v3           #md:Ljava/security/MessageDigest;
    :catch_2f
    move-exception v4

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    .line 985
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 949
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 950
    const-string v4, ""

    .line 959
    :goto_4
    return-object v4

    .line 952
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 954
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 955
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 956
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 957
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 959
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private removeRedundantHistory(I)V
    .registers 7
    .parameter "index"

    .prologue
    .line 1354
    const/4 v2, 0x1

    .line 1357
    .local v2, found:Z
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1358
    .local v1, filename:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1362
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1366
    :goto_22
    add-int/lit8 p1, p1, 0x1

    .line 1367
    if-nez v2, :cond_1

    .line 1368
    return-void

    .line 1364
    :cond_27
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private sendSecurityChangeMessage(Z)V
    .registers 6
    .parameter "status"

    .prologue
    .line 1372
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSecurityChangeMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.KEYGUARD_SECURITY_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1374
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEYGUARD_SECURITY_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1375
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1376
    return-void
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    .line 1223
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1225
    return-void

    .line 1223
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 5
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1233
    return-void
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1241
    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 933
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 935
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 936
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    .line 937
    aget-byte v0, v1, v2

    .line 938
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 940
    .end local v0           #b:B
    :cond_1c
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "ary"

    .prologue
    .line 1029
    const-string v0, "0123456789ABCDEF"

    .line 1030
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 1031
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 1032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1031
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1035
    :cond_43
    return-object v2
.end method

.method private updateEncryptionPassword(Ljava/lang/String;)V
    .registers 8
    .parameter "password"

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 747
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_c

    .line 763
    :goto_b
    return-void

    .line 751
    :cond_c
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 752
    .local v3, service:Landroid/os/IBinder;
    if-nez v3, :cond_1d

    .line 753
    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the encryption password"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 757
    :cond_1d
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    .line 759
    .local v2, mountService:Landroid/os/storage/IMountService;
    :try_start_21
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->changeEncryptionPassword(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_b

    .line 760
    :catch_25
    move-exception v1

    .line 761
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing encryption password"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;)Z
    .registers 10
    .parameter "password"

    .prologue
    const/4 v5, 0x1

    .line 335
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 337
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 338
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 339
    if-gtz v1, :cond_1e

    .line 347
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_1d
    return v5

    .line 343
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_25} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_29

    move-result v5

    goto :goto_1d

    .line 344
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_27
    move-exception v0

    .line 345
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_1d

    .line 346
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_29
    move-exception v2

    .line 347
    .local v2, ioe:Ljava/io/IOException;
    goto :goto_1d
.end method

.method public checkPasswordHistory(Ljava/lang/String;)Z
    .registers 9
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 359
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 360
    .local v2, passwordHashString:Ljava/lang/String;
    const-string/jumbo v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, passwordHistory:Ljava/lang/String;
    if-nez v3, :cond_14

    .line 375
    :cond_13
    :goto_13
    return v5

    .line 365
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 366
    .local v1, passwordHashLength:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v4

    .line 367
    .local v4, passwordHistoryLength:I
    if-eqz v4, :cond_13

    .line 370
    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .line 372
    .local v0, neededPasswordHistoryLength:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2d

    .line 373
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 375
    :cond_2d
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_13
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x1

    .line 310
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 312
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 313
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 314
    if-gtz v1, :cond_1e

    .line 322
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_1d
    return v5

    .line 318
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_1e
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_25} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_25} :catch_29

    move-result v5

    goto :goto_1d

    .line 319
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_27
    move-exception v0

    .line 320
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_1d

    .line 321
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_29
    move-exception v2

    .line 322
    .local v2, ioe:Ljava/io/IOException;
    goto :goto_1d
.end method

.method public clearLock(Z)V
    .registers 5
    .parameter "isFallback"

    .prologue
    const/4 v1, 0x0

    .line 487
    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 488
    :cond_6
    const/high16 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 490
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 491
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 492
    const-string/jumbo v0, "lockscreen.password_type_alternate"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 493
    return-void
.end method

.method public clearLockWithPermission()V
    .registers 2

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 463
    return-void
.end method

.method public clearPasswordHistory()V
    .registers 2

    .prologue
    .line 1324
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeRedundantHistory(I)V

    .line 1325
    return-void
.end method

.method deleteGallery()V
    .registers 5

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 549
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupFaceLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 551
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 554
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1e
    return-void
.end method

.method public deleteTempGallery()V
    .registers 5

    .prologue
    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupFaceLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 540
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "deleteTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 542
    return-void
.end method

.method public getActivePasswordQuality()I
    .registers 6

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 422
    .local v0, activePasswordQuality:I
    const-string/jumbo v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 424
    .local v1, quality:I
    sparse-switch v1, :sswitch_data_48

    .line 457
    :cond_f
    :goto_f
    return v0

    .line 426
    :sswitch_10
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 427
    const/high16 v0, 0x1

    goto :goto_f

    .line 431
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 432
    const v0, 0x8000

    goto :goto_f

    .line 436
    :sswitch_23
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 437
    const/high16 v0, 0x2

    goto :goto_f

    .line 441
    :sswitch_2c
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 442
    const/high16 v0, 0x4

    goto :goto_f

    .line 446
    :sswitch_35
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 447
    const/high16 v0, 0x5

    goto :goto_f

    .line 451
    :sswitch_3e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 452
    const/high16 v0, 0x6

    goto :goto_f

    .line 424
    nop

    :sswitch_data_48
    .sparse-switch
        0x8000 -> :sswitch_19
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_23
        0x40000 -> :sswitch_2c
        0x50000 -> :sswitch_35
        0x60000 -> :sswitch_3e
    .end sparse-switch
.end method

.method public getCurrentFailedPasswordAttempts()I
    .registers 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    return v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 168
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 171
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 6

    .prologue
    const-wide/32 v3, 0x10000

    .line 906
    const-string/jumbo v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 910
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_18

    .line 911
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    invoke-direct {p0, v1, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 915
    :cond_18
    return v0
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 1160
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1161
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1162
    .local v2, now:J
    cmp-long v6, v0, v2

    if-ltz v6, :cond_18

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_19

    :cond_18
    move-wide v0, v4

    .line 1165
    .end local v0           #deadline:J
    :cond_19
    return-wide v0
.end method

.method public getMaximumFailedPasswordsForWipe()I
    .registers 3

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getMaximumTimeToLock()J
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    .line 264
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "inactivity_time"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    int-to-long v3, v5

    .line 266
    .local v3, settingTimeout:J
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 267
    .local v0, devicePolicy:Landroid/app/admin/DevicePolicyManager;
    const-wide/16 v1, 0x0

    .line 268
    .local v1, policyTimeout:J
    if-eqz v0, :cond_1a

    .line 269
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v1

    .line 272
    :cond_1a
    cmp-long v5, v3, v8

    if-lez v5, :cond_21

    .line 273
    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 276
    :cond_21
    cmp-long v5, v1, v8

    if-lez v5, :cond_37

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2f

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_37

    .line 277
    :cond_2f
    const-string v5, "LockPatternUtils"

    const-string v6, "delay the timeout in policy"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v1           #policyTimeout:J
    :goto_36
    return-wide v1

    .restart local v1       #policyTimeout:J
    :cond_37
    move-wide v1, v3

    goto :goto_36
.end method

.method public getNextAlarm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1212
    :cond_11
    const/4 v0, 0x0

    .line 1214
    .end local v0           #nextAlarm:Ljava/lang/String;
    :cond_12
    return-object v0
.end method

.method public getPasswordComplexity()I
    .registers 3

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordComplexity(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getPasswordHistory()I
    .registers 3

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedMaximumPasswordLength(I)I
    .registers 3
    .parameter "mode"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordAllowSimple()Z
    .registers 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordAllowSimple(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getRequestedPasswordHistoryLength()I
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters()I
    .registers 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase()I
    .registers 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter()I
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric()I
    .registers 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols()I
    .registers 3

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase()I
    .registers 3

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public isBiometricWeakEverChosen()Z
    .registers 2

    .prologue
    .line 411
    const-string/jumbo v0, "lockscreen.biometricweakeverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1076
    const-string v4, "enable_facelock"

    const-string/jumbo v5, "lockscreen.options"

    invoke-direct {p0, v5}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1079
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-eq v4, v5, :cond_18

    .line 1105
    :cond_17
    :goto_17
    return v2

    .line 1087
    :cond_18
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1089
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_1e
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_24} :catch_39

    .line 1095
    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1099
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_17

    move v2, v3

    .line 1105
    goto :goto_17

    .line 1090
    :catch_39
    move-exception v0

    .line 1091
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_17
.end method

.method public isEmergencyCallCapable()Z
    .registers 3

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallEnabledWhileSimLocked()Z
    .registers 3

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled()Z
    .registers 16

    .prologue
    const-wide/32 v13, 0x40000

    const-wide/32 v11, 0x20000

    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1042
    const-string/jumbo v8, "lockscreen.password_type"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1043
    .local v3, mode:J
    const-string/jumbo v8, "lockscreen.password_type_alternate"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1044
    .local v1, backupMode:J
    cmp-long v8, v3, v13

    if-eqz v8, :cond_2e

    cmp-long v8, v3, v11

    if-eqz v8, :cond_2e

    const-wide/32 v8, 0x50000

    cmp-long v8, v3, v8

    if-eqz v8, :cond_2e

    const-wide/32 v8, 0x60000

    cmp-long v8, v3, v8

    if-nez v8, :cond_57

    :cond_2e
    move v5, v7

    .line 1048
    .local v5, passwordEnabled:Z
    :goto_2f
    cmp-long v8, v1, v13

    if-eqz v8, :cond_45

    cmp-long v8, v1, v11

    if-eqz v8, :cond_45

    const-wide/32 v8, 0x50000

    cmp-long v8, v1, v8

    if-eqz v8, :cond_45

    const-wide/32 v8, 0x60000

    cmp-long v8, v1, v8

    if-nez v8, :cond_59

    :cond_45
    move v0, v7

    .line 1053
    .local v0, backupEnabled:Z
    :goto_46
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v8

    if-eqz v8, :cond_5b

    if-nez v5, :cond_56

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    if-eqz v8, :cond_5b

    if-eqz v0, :cond_5b

    :cond_56
    :goto_56
    return v7

    .end local v0           #backupEnabled:Z
    .end local v5           #passwordEnabled:Z
    :cond_57
    move v5, v6

    .line 1044
    goto :goto_2f

    .restart local v5       #passwordEnabled:Z
    :cond_59
    move v0, v6

    .line 1048
    goto :goto_46

    .restart local v0       #backupEnabled:Z
    :cond_5b
    move v7, v6

    .line 1053
    goto :goto_56
.end method

.method public isLockPatternEnabled()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/32 v5, 0x10000

    .line 1061
    const-string/jumbo v3, "lockscreen.password_type_alternate"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    move v0, v1

    .line 1065
    .local v0, backupEnabled:Z
    :goto_11
    const-string/jumbo v3, "lock_pattern_autolock"

    invoke-direct {p0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-direct {p0, v3, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2d

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v3

    if-eqz v3, :cond_30

    if-eqz v0, :cond_30

    :cond_2d
    :goto_2d
    return v1

    .end local v0           #backupEnabled:Z
    :cond_2e
    move v0, v2

    .line 1061
    goto :goto_11

    .restart local v0       #backupEnabled:Z
    :cond_30
    move v1, v2

    .line 1065
    goto :goto_2d
.end method

.method public isLockScreenDisabled()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 512
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "lockscreen.disabled"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isPatternEverChosen()Z
    .registers 2

    .prologue
    .line 401
    const-string/jumbo v0, "lockscreen.patterneverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked()Z
    .registers 2

    .prologue
    .line 1174
    const-string/jumbo v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPukUnlockScreenEnable()Z
    .registers 3

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1244
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    int-to-long v2, v6

    .line 1245
    .local v2, mode:J
    const-wide/32 v6, 0x10000

    cmp-long v6, v2, v6

    if-nez v6, :cond_43

    move v1, v4

    .line 1246
    .local v1, isPattern:Z
    :goto_f
    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_2b

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_45

    :cond_2b
    move v0, v4

    .line 1250
    .local v0, isPassword:Z
    :goto_2c
    if-eqz v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v6

    if-nez v6, :cond_42

    :cond_3a
    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1252
    .local v4, secure:Z
    :cond_42
    :goto_42
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_43
    move v1, v5

    .line 1245
    goto :goto_f

    .restart local v1       #isPattern:Z
    :cond_45
    move v0, v5

    .line 1246
    goto :goto_2c

    .restart local v0       #isPassword:Z
    :cond_47
    move v4, v5

    .line 1250
    goto :goto_42
.end method

.method public isSecureForGuestMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 479
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "sys.guest_mode_security.enabled"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 2

    .prologue
    .line 1133
    const-string/jumbo v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .registers 2

    .prologue
    .line 1119
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method moveTempGallery()V
    .registers 5

    .prologue
    .line 528
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.facelock"

    const-string v3, "com.android.facelock.SetupFaceLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 530
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "moveTempGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 531
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 532
    return-void
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .registers 11
    .parameter "password"

    .prologue
    .line 1012
    if-nez p1, :cond_4

    .line 1013
    const/4 v2, 0x0

    .line 1025
    :goto_3
    return-object v2

    .line 1015
    :cond_4
    const/4 v0, 0x0

    .line 1016
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1018
    .local v2, hashed:[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1019
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1020
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1021
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_51

    move-result-object v2

    goto :goto_3

    .line 1022
    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :catch_51
    move-exception v1

    .line 1023
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public reportFailedPasswordAttempt()V
    .registers 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 256
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    .line 260
    return-void
.end method

.method public resumeCall()Z
    .registers 3

    .prologue
    .line 1300
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1302
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    :try_start_d
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_16

    .line 1303
    const/4 v1, 0x1

    .line 1308
    :goto_14
    return v1

    .line 1305
    :catch_15
    move-exception v1

    .line 1308
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 4
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZ)V

    .line 774
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZ)V
    .registers 36
    .parameter "password"
    .parameter "quality"
    .parameter "isFallback"

    .prologue
    .line 786
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v25

    .line 789
    .local v25, hash:[B
    :try_start_4
    new-instance v31, Ljava/io/RandomAccessFile;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v13, "rw"

    move-object/from16 v0, v31

    invoke-direct {v0, v4, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    .local v31, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_7d

    .line 792
    const-wide/16 v13, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v13, v14}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 796
    :goto_19
    invoke-virtual/range {v31 .. v31}, Ljava/io/RandomAccessFile;->close()V

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 798
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v28

    .line 799
    .local v28, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_19c

    .line 801
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 806
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v3

    .line 807
    .local v3, computedQuality:I
    if-nez p3, :cond_a5

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 809
    const-string/jumbo v4, "lockscreen.password_type"

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 824
    :goto_48
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePasswordComplexCharacterGroup(Ljava/lang/String;)I

    move-result v11

    .line 825
    .local v11, numberOfComplexGroup:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->isSimpleDevicePassword(Ljava/lang/String;)Z

    move-result v12

    .line 827
    .local v12, isSimple:Z
    if-eqz v3, :cond_150

    .line 828
    const/4 v5, 0x0

    .line 829
    .local v5, letters:I
    const/4 v6, 0x0

    .line 830
    .local v6, uppercase:I
    const/4 v7, 0x0

    .line 831
    .local v7, lowercase:I
    const/4 v8, 0x0

    .line 832
    .local v8, numbers:I
    const/4 v9, 0x0

    .line 833
    .local v9, symbols:I
    const/4 v10, 0x0

    .line 834
    .local v10, nonletter:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_5a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_11f

    .line 835
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    .line 836
    .local v22, c:C
    const/16 v4, 0x41

    move/from16 v0, v22

    if-lt v0, v4, :cond_f5

    const/16 v4, 0x5a

    move/from16 v0, v22

    if-gt v0, v4, :cond_f5

    .line 837
    add-int/lit8 v5, v5, 0x1

    .line 838
    add-int/lit8 v6, v6, 0x1

    .line 834
    :goto_7a
    add-int/lit8 v26, v26, 0x1

    goto :goto_5a

    .line 794
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #computedQuality:I
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v11           #numberOfComplexGroup:I
    .end local v12           #isSimple:Z
    .end local v22           #c:C
    .end local v26           #i:I
    .end local v28           #keyStore:Landroid/security/KeyStore;
    :cond_7d
    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v13, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4, v13}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_88} :catch_89
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_88} :catch_d9

    goto :goto_19

    .line 890
    .end local v31           #raf:Ljava/io/RandomAccessFile;
    :catch_89
    move-exception v24

    .line 892
    .local v24, fnfe:Ljava/io/FileNotFoundException;
    const-string v4, "LockPatternUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to save lock pattern to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local v24           #fnfe:Ljava/io/FileNotFoundException;
    :goto_a4
    return-void

    .line 811
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v3       #computedQuality:I
    .restart local v28       #keyStore:Landroid/security/KeyStore;
    .restart local v31       #raf:Ljava/io/RandomAccessFile;
    :cond_a5
    :try_start_a5
    const-string/jumbo v4, "lockscreen.password_type"

    const-wide/32 v13, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 812
    const-string/jumbo v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    :try_end_bf
    .catch Ljava/io/FileNotFoundException; {:try_start_a5 .. :try_end_bf} :catch_89
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_bf} :catch_d9

    .line 815
    :try_start_bf
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V
    :try_end_c2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_bf .. :try_end_c2} :catch_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_bf .. :try_end_c2} :catch_89
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_d9

    goto :goto_48

    .line 816
    :catch_c3
    move-exception v23

    .line 817
    .local v23, e:Landroid/content/ActivityNotFoundException;
    :try_start_c4
    const-string v4, "LockPatternUtils"

    const-string v13, "ActivityNotFoundException"

    invoke-static {v4, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string/jumbo v4, "lockscreen.biometricweakeverchosen"

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->moveTempGallery()V
    :try_end_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_c4 .. :try_end_d7} :catch_89
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_d7} :catch_d9

    goto/16 :goto_48

    .line 893
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v3           #computedQuality:I
    .end local v23           #e:Landroid/content/ActivityNotFoundException;
    .end local v28           #keyStore:Landroid/security/KeyStore;
    .end local v31           #raf:Ljava/io/RandomAccessFile;
    :catch_d9
    move-exception v27

    .line 895
    .local v27, ioe:Ljava/io/IOException;
    const-string v4, "LockPatternUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to save lock pattern to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 839
    .end local v27           #ioe:Ljava/io/IOException;
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v3       #computedQuality:I
    .restart local v5       #letters:I
    .restart local v6       #uppercase:I
    .restart local v7       #lowercase:I
    .restart local v8       #numbers:I
    .restart local v9       #symbols:I
    .restart local v10       #nonletter:I
    .restart local v11       #numberOfComplexGroup:I
    .restart local v12       #isSimple:Z
    .restart local v22       #c:C
    .restart local v26       #i:I
    .restart local v28       #keyStore:Landroid/security/KeyStore;
    .restart local v31       #raf:Ljava/io/RandomAccessFile;
    :cond_f5
    const/16 v4, 0x61

    move/from16 v0, v22

    if-lt v0, v4, :cond_107

    const/16 v4, 0x7a

    move/from16 v0, v22

    if-gt v0, v4, :cond_107

    .line 840
    add-int/lit8 v5, v5, 0x1

    .line 841
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7a

    .line 842
    :cond_107
    const/16 v4, 0x30

    move/from16 v0, v22

    if-lt v0, v4, :cond_119

    const/16 v4, 0x39

    move/from16 v0, v22

    if-gt v0, v4, :cond_119

    .line 843
    add-int/lit8 v8, v8, 0x1

    .line 844
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7a

    .line 846
    :cond_119
    add-int/lit8 v9, v9, 0x1

    .line 847
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7a

    .line 853
    .end local v22           #c:C
    :cond_11f
    :try_start_11f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v2 .. v12}, Landroid/app/admin/DevicePolicyManager;->htcSetActivePasswordState(IIIIIIIIIZ)V

    .line 855
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->sendSecurityChangeMessage(Z)V

    .line 865
    .end local v5           #letters:I
    .end local v6           #uppercase:I
    .end local v7           #lowercase:I
    .end local v8           #numbers:I
    .end local v9           #symbols:I
    .end local v10           #nonletter:I
    .end local v26           #i:I
    :goto_12c
    const-string/jumbo v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 866
    .local v29, passwordHistory:Ljava/lang/String;
    if-nez v29, :cond_13c

    .line 867
    new-instance v29, Ljava/lang/String;

    .end local v29           #passwordHistory:Ljava/lang/String;
    invoke-direct/range {v29 .. v29}, Ljava/lang/String;-><init>()V

    .line 869
    .restart local v29       #passwordHistory:Ljava/lang/String;
    :cond_13c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v30

    .line 870
    .local v30, passwordHistoryLength:I
    if-nez v30, :cond_163

    .line 871
    const-string v29, ""

    .line 880
    :goto_144
    const-string/jumbo v4, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 859
    .end local v29           #passwordHistory:Ljava/lang/String;
    .end local v30           #passwordHistoryLength:I
    :cond_150
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v2

    invoke-virtual/range {v13 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    goto :goto_12c

    .line 873
    .restart local v29       #passwordHistory:Ljava/lang/String;
    .restart local v30       #passwordHistoryLength:I
    :cond_163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 876
    const/4 v4, 0x0

    move-object/from16 v0, v25

    array-length v13, v0

    mul-int v13, v13, v30

    add-int v13, v13, v30

    add-int/lit8 v13, v13, -0x1

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    goto :goto_144

    .line 884
    .end local v3           #computedQuality:I
    .end local v11           #numberOfComplexGroup:I
    .end local v12           #isSimple:Z
    .end local v29           #passwordHistory:Ljava/lang/String;
    .end local v30           #passwordHistoryLength:I
    :cond_19c
    invoke-virtual/range {v28 .. v28}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 885
    invoke-virtual/range {v28 .. v28}, Landroid/security/KeyStore;->reset()Z

    .line 887
    :cond_1a5
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v2

    invoke-virtual/range {v13 .. v21}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_1b7
    .catch Ljava/io/FileNotFoundException; {:try_start_11f .. :try_end_1b7} :catch_89
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_1b7} :catch_d9

    goto/16 :goto_a4
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 521
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Z)V
    .registers 18
    .parameter
    .parameter "isFallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v11

    .line 566
    .local v11, hash:[B
    :try_start_4
    new-instance v14, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v14, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v14, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_52

    .line 569
    const-wide/16 v1, 0x0

    invoke-virtual {v14, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 573
    :goto_15
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 575
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v13

    .line 576
    .local v13, keyStore:Landroid/security/KeyStore;
    if-eqz p1, :cond_b9

    .line 577
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 578
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 579
    if-nez p2, :cond_74

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 581
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 596
    :goto_3e
    const/high16 v1, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V

    .line 599
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->sendSecurityChangeMessage(Z)V

    .line 616
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v13           #keyStore:Landroid/security/KeyStore;
    .end local v14           #raf:Ljava/io/RandomAccessFile;
    :goto_51
    return-void

    .line 571
    .restart local v14       #raf:Ljava/io/RandomAccessFile;
    :cond_52
    const/4 v1, 0x0

    array-length v2, v11

    invoke-virtual {v14, v11, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_57} :catch_58
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_57} :catch_9d

    goto :goto_15

    .line 608
    .end local v14           #raf:Ljava/io/RandomAccessFile;
    :catch_58
    move-exception v10

    .line 611
    .local v10, fnfe:Ljava/io/FileNotFoundException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock pattern to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 583
    .end local v10           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v13       #keyStore:Landroid/security/KeyStore;
    .restart local v14       #raf:Ljava/io/RandomAccessFile;
    :cond_74
    :try_start_74
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x8000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 584
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    :try_end_86
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_86} :catch_58
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_86} :catch_9d

    .line 588
    :try_start_86
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V
    :try_end_89
    .catch Landroid/content/ActivityNotFoundException; {:try_start_86 .. :try_end_89} :catch_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_89} :catch_58
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_9d

    goto :goto_3e

    .line 589
    :catch_8a
    move-exception v9

    .line 590
    .local v9, e:Landroid/content/ActivityNotFoundException;
    :try_start_8b
    const-string v1, "LockPatternUtils"

    const-string v2, "ActivityNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 592
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->moveTempGallery()V
    :try_end_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_9c} :catch_58
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_9c} :catch_9d

    goto :goto_3e

    .line 612
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #e:Landroid/content/ActivityNotFoundException;
    .end local v13           #keyStore:Landroid/security/KeyStore;
    .end local v14           #raf:Ljava/io/RandomAccessFile;
    :catch_9d
    move-exception v12

    .line 614
    .local v12, ioe:Ljava/io/IOException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock pattern to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 602
    .end local v12           #ioe:Ljava/io/IOException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v13       #keyStore:Landroid/security/KeyStore;
    .restart local v14       #raf:Ljava/io/RandomAccessFile;
    :cond_b9
    :try_start_b9
    invoke-virtual {v13}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 603
    invoke-virtual {v13}, Landroid/security/KeyStore;->reset()Z

    .line 605
    :cond_c2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIII)V
    :try_end_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_b9 .. :try_end_cd} :catch_58
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_cd} :catch_9d

    goto :goto_51
.end method

.method public savedPasswordExists()Z
    .registers 2

    .prologue
    .line 391
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .registers 2

    .prologue
    .line 383
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1112
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1113
    return-void
.end method

.method public setLockScreenDisabled(Z)V
    .registers 5
    .parameter "disable"

    .prologue
    .line 502
    const-string/jumbo v2, "lockscreen.disabled"

    if-eqz p1, :cond_b

    const-wide/16 v0, 0x1

    :goto_7
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 503
    return-void

    .line 502
    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_7
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 1149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1150
    .local v0, deadline:J
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1151
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .parameter "locked"

    .prologue
    .line 1186
    const-string/jumbo v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1187
    return-void
.end method

.method public setSecurityForGuest(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 467
    const-string/jumbo v1, "sys.guest_mode_security.enabled"

    if-eqz p1, :cond_c

    const-string/jumbo v0, "true"

    :goto_8
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void

    .line 467
    :cond_c
    const-string v0, "false"

    goto :goto_8
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1140
    const-string/jumbo v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1141
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1126
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1127
    return-void
.end method

.method public shiftPasswordHistory()V
    .registers 8

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistory()I

    move-result v1

    .line 1329
    .local v1, history:I
    add-int/lit8 v2, v1, -0x1

    .line 1331
    .local v2, index:I
    add-int/lit8 v5, v1, -0x1

    invoke-direct {p0, v5}, Lcom/android/internal/widget/LockPatternUtils;->removeRedundantHistory(I)V

    .line 1333
    :cond_b
    :goto_b
    if-lez v2, :cond_4e

    .line 1334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1336
    .local v3, newFilename:Ljava/lang/String;
    add-int/lit8 v2, v2, -0x1

    .line 1338
    if-nez v2, :cond_3a

    .line 1339
    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    .line 1344
    .local v4, oldFilename:Ljava/lang/String;
    :goto_26
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1348
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_b

    .line 1341
    .end local v0           #f:Ljava/io/File;
    .end local v4           #oldFilename:Ljava/lang/String;
    :cond_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #oldFilename:Ljava/lang/String;
    goto :goto_26

    .line 1351
    .end local v3           #newFilename:Ljava/lang/String;
    .end local v4           #oldFilename:Ljava/lang/String;
    :cond_4e
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V
    .registers 6
    .parameter "button"
    .parameter "phoneState"
    .parameter "shown"

    .prologue
    .line 1270
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz p3, :cond_16

    .line 1271
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1278
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1c

    .line 1280
    const v0, 0x10402f5

    .line 1290
    .local v0, textId:I
    :goto_12
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 1291
    .end local v0           #textId:I
    :goto_15
    return-void

    .line 1273
    :cond_16
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_15

    .line 1285
    :cond_1c
    const v0, 0x10402f4

    .restart local v0       #textId:I
    goto :goto_12
.end method

.method public usingBiometricWeak()Z
    .registers 5

    .prologue
    .line 922
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    long-to-int v0, v1

    .line 924
    .local v0, quality:I
    const v1, 0x8000

    if-ne v0, v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
