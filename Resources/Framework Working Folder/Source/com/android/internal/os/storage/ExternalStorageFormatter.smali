.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final CHECK_MOUNTED_INTERVAL:I = 0x64

.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field private static final EXTERNAL_STORAGE_IDX:I = 0x1

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final EXTRA_RESPONSE_STATUS:Ljava/lang/String; = "response_status"

.field public static final FORMAT_ALL_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

.field public static final FORMAT_ALL_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ALL_ONLY"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_INTERNAL_STORAGE_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field private static final HTC_ACTION_FORMAT_ALL:I = 0x2

.field private static final HTC_ACTION_FORMAT_ALL_FACTORY_RESET:I = 0x3

.field private static final HTC_ACTION_FORMAT_INTERNAL_ONLY:I = 0x1

.field private static final HTC_ACTION_NONE:I = 0x0

.field private static final HTC_DEBUG_FORMATTER:Z = false

.field private static final INTERNAL_STORAGE_IDX:I = 0x0

.field private static final LAST_STORAGE_IDX:I = 0x0

.field private static final MAX_MOUNT_TIME:I = 0x64

.field private static final MSG_CHECK_MOUNT_OK:I = 0x15667

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private htcFormatAction:I

.field private mAlwaysReset:Z

.field private mFactoryReset:Z

.field private mFormatOnly:Z

.field private mFormatSecquence:I

.field private mFormatStoragePath:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResponseStatus:Z

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 60
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 64
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 66
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    .line 70
    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 74
    iput-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    .line 82
    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    .line 98
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 196
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private InitFormatSequence()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 680
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 681
    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    .line 693
    :goto_9
    return-void

    .line 683
    :cond_a
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 684
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    goto :goto_9

    .line 687
    :cond_14
    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    goto :goto_9
.end method

.method static synthetic access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->responseStatus(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method

.method private formatNextStorage()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 700
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-ne v2, v1, :cond_b

    .line 723
    :cond_a
    :goto_a
    return v0

    .line 704
    :cond_b
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-eqz v2, :cond_a

    .line 710
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 714
    :cond_1b
    iget v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-ne v2, v1, :cond_21

    .line 715
    iput v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    .line 718
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 719
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    .line 721
    invoke-direct {p0, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V

    move v0, v1

    .line 723
    goto :goto_a
.end method

.method private getFormatStoragePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_b

    .line 626
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 648
    :goto_a
    return-object v0

    .line 628
    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 629
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_a

    .line 632
    :cond_12
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 633
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    .line 648
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_a

    .line 635
    :cond_20
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c

    .line 637
    :cond_2a
    iget v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-nez v0, :cond_35

    .line 638
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1d

    .line 641
    :cond_35
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemoveableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1d

    .line 645
    :cond_3c
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemoveableStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatStoragePath:Ljava/lang/String;

    goto :goto_1d
.end method

.method private getFormatStorageState()Ljava/lang/String;
    .registers 4

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 657
    .local v0, status:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_12

    .line 658
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    :goto_11
    return-object v1

    .line 660
    :cond_12
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 661
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    move-object v1, v0

    .line 676
    goto :goto_11

    .line 663
    :cond_1d
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    .line 665
    :cond_27
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-nez v1, :cond_30

    .line 666
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 669
    :cond_30
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 673
    :cond_35
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private getInternalStorageDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 599
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 604
    :goto_f
    return-object v0

    .line 601
    :cond_10
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method private getInternalStorageState()Ljava/lang/String;
    .registers 3

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 612
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 613
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v0

    .line 618
    :goto_b
    return-object v0

    .line 615
    :cond_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private getRemovableStorageState()Ljava/lang/String;
    .registers 3

    .prologue
    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 587
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 592
    :goto_b
    return-object v0

    .line 589
    :cond_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private getRemoveableStorageDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, StoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 574
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 579
    :goto_f
    return-object v0

    .line 576
    :cond_10
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method private isExternalStoragePath(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, extStoragePath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 558
    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 560
    :cond_14
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 561
    const/4 v0, 0x0

    goto :goto_f

    .line 564
    :cond_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method private responseStatus(Ljava/lang/String;I)V
    .registers 7
    .parameter "storagePath"
    .parameter "formatReturnValue"

    .prologue
    .line 733
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-nez v3, :cond_5

    .line 756
    :cond_4
    :goto_4
    return-void

    .line 736
    :cond_5
    const/4 v2, 0x0

    .line 738
    .local v2, errorCode:I
    if-nez p2, :cond_22

    .line 739
    const/4 v2, 0x0

    .line 748
    :goto_9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 749
    .local v1, data:Landroid/content/Intent;
    const-string v3, "com.htc.app.admin.dpm.extra.STORAGE_PATH"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/HtcIfDevicePolicyManager;

    .line 753
    .local v0, Dpm:Landroid/app/admin/HtcIfDevicePolicyManager;
    if-eqz v0, :cond_4

    .line 754
    const/4 v3, 0x0

    invoke-interface {v0, v3, v2, v1}, Landroid/app/admin/HtcIfDevicePolicyManager;->responseAsyncResult(IILandroid/content/Intent;)V

    goto :goto_4

    .line 741
    .end local v0           #Dpm:Landroid/app/admin/HtcIfDevicePolicyManager;
    .end local v1           #data:Landroid/content/Intent;
    :cond_22
    const/4 v3, -0x2

    if-ne p2, v3, :cond_28

    .line 742
    const/16 v2, -0x64

    goto :goto_9

    .line 745
    :cond_28
    const/16 v2, -0x65

    goto :goto_9
.end method

.method private sendFirstCheckMountMessage(I)V
    .registers 6
    .parameter "storageIdx"

    .prologue
    const v3, 0x15667

    .line 727
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 729
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 730
    return-void
.end method


# virtual methods
.method checkStorageMounted(I)Z
    .registers 5
    .parameter "storeageIdx"

    .prologue
    const/4 v1, 0x1

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, state:Ljava/lang/String;
    if-ne p1, v1, :cond_23

    .line 151
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemovableStorageState()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_8
    const-string v2, "bad_removal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, "removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, "shared"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 163
    :cond_22
    :goto_22
    return v1

    .line 154
    :cond_23
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 163
    :cond_28
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_22
.end method

.method fail(ILjava/lang/String;)V
    .registers 9
    .parameter "msg"
    .parameter "storageState"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, storagePath:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 321
    const/4 v3, 0x1

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 322
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format external storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_2a
    const-string v3, "checking"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 330
    .local v1, isChecking:Z
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    if-eqz v3, :cond_4b

    if-nez v1, :cond_4b

    .line 331
    const-string/jumbo v3, "removed"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "bad_removal"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 333
    :cond_47
    const/4 v3, -0x2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->responseStatus(Ljava/lang/String;I)V

    .line 340
    :cond_4b
    :goto_4b
    const/4 v0, 0x1

    .line 341
    .local v0, formatOver:Z
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_56

    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_81

    .line 344
    :cond_56
    iget v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSecquence:I

    if-eqz v3, :cond_60

    .line 345
    const/4 v0, 0x0

    .line 347
    if-nez v1, :cond_60

    .line 348
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z

    .line 353
    :cond_60
    if-eqz v1, :cond_81

    .line 366
    :cond_62
    :goto_62
    return-void

    .line 325
    .end local v0           #formatOver:Z
    .end local v1           #isChecking:Z
    :cond_63
    const-string v3, "ExternalStorageFormatter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format internal storage fail="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 336
    .restart local v1       #isChecking:Z
    :cond_7c
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->responseStatus(Ljava/lang/String;I)V

    goto :goto_4b

    .line 359
    .restart local v0       #formatOver:Z
    :cond_81
    if-eqz v0, :cond_62

    .line 360
    iget-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v3, :cond_91

    .line 361
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 363
    :cond_91
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 364
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "fail stop service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .registers 4

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_13

    .line 544
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 545
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_16

    .line 546
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 551
    .end local v0           #service:Landroid/os/IBinder;
    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 548
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_16
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method mountStorage(I)V
    .registers 7
    .parameter "storeageIdx"

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 171
    .local v1, mountService:Landroid/os/storage/IMountService;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_27

    .line 173
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 191
    :goto_14
    return-void

    .line 177
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getRemoveableStorageDirectory()Ljava/lang/String;

    move-result-object v2

    .line 185
    :goto_19
    :try_start_19
    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_14

    .line 186
    :catch_1d
    move-exception v0

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string/jumbo v4, "mountStorage Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getInternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    goto :goto_19
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialog"

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 307
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, extStoragePath:Ljava/lang/String;
    :try_start_8
    invoke-interface {v2, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_f

    .line 313
    :goto_b
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 314
    return-void

    .line 310
    :catch_f
    move-exception v0

    .line 311
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ExternalStorageFormatter"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 216
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_19

    .line 217
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 218
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 221
    :cond_19
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 223
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 224
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_b

    .line 290
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 292
    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    .line 293
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 295
    :cond_14
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 296
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 297
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 10
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 228
    iput v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 232
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 235
    :cond_17
    const-string v1, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 236
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatOnly:Z

    .line 240
    :cond_25
    const-string v1, "com.android.internal.os.storage.FORMAT_INTERNAL_STORAGE_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 241
    iput v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 252
    :cond_2f
    :goto_2f
    const-string/jumbo v1, "response_status"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 253
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mResponseStatus:Z

    .line 258
    :cond_3a
    const-string v1, "always_reset"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 259
    iput-boolean v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 262
    :cond_44
    const-string/jumbo v1, "storage_volume"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 264
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_7f

    .line 265
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 266
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 268
    iget v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    if-eqz v1, :cond_9d

    .line 269
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 273
    :goto_68
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 274
    iget-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v1, :cond_7c

    .line 275
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 280
    :cond_7c
    invoke-virtual {p0, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Z)V

    .line 284
    :cond_7f
    return v5

    .line 243
    :cond_80
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_ONLY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 244
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 245
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto :goto_2f

    .line 247
    :cond_8f
    const-string v1, "com.android.internal.os.storage.FORMAT_ALL_AND_FACTORY_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 248
    iput v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I

    .line 249
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->InitFormatSequence()V

    goto :goto_2f

    .line 271
    :cond_9d
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_68
.end method

.method public updateProgressDialog(I)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_22

    .line 528
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 529
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 530
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 534
    :cond_22
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->isExternalStoragePath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 535
    const p1, 0x20401a8

    .line 538
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 540
    return-void
.end method

.method updateProgressState(Z)V
    .registers 9
    .parameter "readyToFormat"

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStorageState()Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, status:Ljava/lang/String;
    const-string/jumbo v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string/jumbo v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 381
    :cond_16
    if-eqz p1, :cond_2c

    .line 384
    const v4, 0x104046e

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 386
    .local v2, mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, extStoragePath:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_27
    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 524
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_2c
    :goto_2c
    return-void

    .line 391
    .restart local v1       #extStoragePath:Ljava/lang/String;
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    :catch_2d
    move-exception v0

    .line 392
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 395
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_36
    const-string/jumbo v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string/jumbo v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 401
    :cond_51
    const v4, 0x104046f

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 403
    .restart local v2       #mountService:Landroid/os/storage/IMountService;
    invoke-direct {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getFormatStoragePath()Ljava/lang/String;

    move-result-object v1

    .line 405
    .restart local v1       #extStoragePath:Ljava/lang/String;
    if-eqz v2, :cond_6a

    .line 406
    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->start()V

    goto :goto_2c

    .line 506
    :cond_6a
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 508
    .end local v1           #extStoragePath:Ljava/lang/String;
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :cond_72
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 509
    const v4, 0x1040471

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_2c

    .line 510
    :cond_81
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 511
    const v4, 0x1040472

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_2c

    .line 512
    :cond_90
    const-string/jumbo v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 513
    const v4, 0x1040473

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto :goto_2c

    .line 514
    :cond_a0
    const-string/jumbo v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 515
    const v4, 0x1040474

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    goto/16 :goto_2c

    .line 516
    :cond_b1
    const-string v4, "formatting"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 517
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 520
    :cond_d4
    const v4, 0x1040475

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(ILjava/lang/String;)V

    .line 521
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c
.end method
