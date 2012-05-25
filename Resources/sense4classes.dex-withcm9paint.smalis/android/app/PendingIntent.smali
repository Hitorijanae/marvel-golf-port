.class public final Landroid/app/PendingIntent;
.super Ljava/lang/Object;
.source "PendingIntent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PendingIntent$FinishedDispatcher;,
        Landroid/app/PendingIntent$OnFinished;,
        Landroid/app/PendingIntent$CanceledException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private static final CS_KEEPALIVE_PROPERTY:Ljava/lang/String; = "missedKeepalive"

.field public static final FLAG_CANCEL_CURRENT:I = 0x10000000

.field public static final FLAG_NO_CREATE:I = 0x20000000

.field public static final FLAG_ONE_SHOT:I = 0x40000000

.field public static final FLAG_UPDATE_CURRENT:I = 0x8000000

.field private static final GOOGLE_FACEBOOK_PROPERTY:Ljava/lang/CharSequence; = null

.field private static final TAG:Ljava/lang/String; = "PendingIntent"


# instance fields
.field private final mTarget:Landroid/content/IIntentSender;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 104
    const-string v0, "com.facebook.katana.service"

    sput-object v0, Landroid/app/PendingIntent;->GOOGLE_FACEBOOK_PROPERTY:Ljava/lang/CharSequence;

    .line 694
    new-instance v0, Landroid/app/PendingIntent$1;

    invoke-direct {v0}, Landroid/app/PendingIntent$1;-><init>()V

    sput-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/IIntentSender;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 735
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 737
    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 739
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 740
    invoke-static {p1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    .line 741
    return-void
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 16
    .parameter "context"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "flags"

    .prologue
    const/4 v11, 0x0

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, packageName:Ljava/lang/String;
    array-length v0, p2

    new-array v7, v0, [Ljava/lang/String;

    .line 263
    .local v7, resolvedTypes:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_9
    array-length v0, p2

    if-ge v9, v0, :cond_21

    .line 264
    aget-object v0, p2, v9

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 265
    aget-object v0, p2, v9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v9

    .line 263
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 268
    :cond_21
    :try_start_21
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    move-object v6, p2

    move v8, p3

    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v10

    .line 272
    .local v10, target:Landroid/content/IIntentSender;
    if-eqz v10, :cond_37

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v10}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_36} :catch_39

    .line 275
    .end local v10           #target:Landroid/content/IIntentSender;
    :goto_36
    return-object v0

    .restart local v10       #target:Landroid/content/IIntentSender;
    :cond_37
    move-object v0, v11

    .line 272
    goto :goto_36

    .line 273
    .end local v10           #target:Landroid/content/IIntentSender;
    :catch_39
    move-exception v0

    move-object v0, v11

    .line 275
    goto :goto_36
.end method

.method public static getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 16
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    const/4 v11, 0x0

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, packageName:Ljava/lang/String;
    if-eqz p2, :cond_37

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, resolvedType:Ljava/lang/String;
    :goto_f
    const/4 v0, 0x0

    :try_start_10
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 207
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/content/Intent;

    const/4 v5, 0x0

    aput-object p2, v6, v5

    if-eqz v9, :cond_39

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v7, v5

    :goto_28
    move v5, p1

    move v8, p3

    invoke-interface/range {v0 .. v8}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v10

    .line 212
    .local v10, target:Landroid/content/IIntentSender;
    if-eqz v10, :cond_36

    new-instance v0, Landroid/app/PendingIntent;

    invoke-direct {v0, v10}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_35} :catch_3b

    move-object v11, v0

    .line 215
    .end local v10           #target:Landroid/content/IIntentSender;
    :cond_36
    :goto_36
    return-object v11

    .end local v9           #resolvedType:Ljava/lang/String;
    :cond_37
    move-object v9, v11

    .line 203
    goto :goto_f

    .restart local v9       #resolvedType:Ljava/lang/String;
    :cond_39
    move-object v7, v11

    .line 207
    goto :goto_28

    .line 213
    :catch_3b
    move-exception v0

    goto :goto_36
.end method

.method public static getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 20
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, packageName:Ljava/lang/String;
    if-eqz p2, :cond_74

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 311
    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 320
    .local v10, OriCheckAlarmString:Ljava/lang/String;
    :goto_15
    if-eqz p2, :cond_7a

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    .line 323
    .local v13, resolvedType:Ljava/lang/String;
    :goto_21
    const/4 v1, 0x0

    :try_start_22
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 324
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object p2, v7, v6

    if-eqz v13, :cond_7c

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v8, v6

    :goto_3c
    move/from16 v6, p1

    move/from16 v9, p3

    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v15

    .line 332
    .local v15, target:Landroid/content/IIntentSender;
    if-eqz v15, :cond_7e

    .line 333
    new-instance v14, Landroid/app/PendingIntent;

    invoke-direct {v14, v15}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    .line 337
    .local v14, returnPendingIntent:Landroid/app/PendingIntent;
    :goto_4b
    const-string v1, "alarm"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v11

    .line 340
    .local v11, alarmInterface:Landroid/app/IAlarmManager;
    if-eqz v11, :cond_6d

    sget-object v1, Landroid/app/PendingIntent;->GOOGLE_FACEBOOK_PROPERTY:Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6d

    .line 343
    const-string v1, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    .line 344
    .local v12, mAlarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v12, v14}, Landroid/app/AlarmManager;->setAPPAlarmPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_6d} :catch_80

    .line 352
    .end local v11           #alarmInterface:Landroid/app/IAlarmManager;
    .end local v12           #mAlarmManager:Landroid/app/AlarmManager;
    .end local v14           #returnPendingIntent:Landroid/app/PendingIntent;
    .end local v15           #target:Landroid/content/IIntentSender;
    :cond_6d
    :goto_6d
    return-object v14

    .line 314
    .end local v10           #OriCheckAlarmString:Ljava/lang/String;
    .end local v13           #resolvedType:Ljava/lang/String;
    :cond_6e
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .restart local v10       #OriCheckAlarmString:Ljava/lang/String;
    goto :goto_15

    .line 317
    .end local v10           #OriCheckAlarmString:Ljava/lang/String;
    :cond_74
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .restart local v10       #OriCheckAlarmString:Ljava/lang/String;
    goto :goto_15

    .line 320
    :cond_7a
    const/4 v13, 0x0

    goto :goto_21

    .line 324
    .restart local v13       #resolvedType:Ljava/lang/String;
    :cond_7c
    const/4 v8, 0x0

    goto :goto_3c

    .line 335
    .restart local v15       #target:Landroid/content/IIntentSender;
    :cond_7e
    const/4 v14, 0x0

    .restart local v14       #returnPendingIntent:Landroid/app/PendingIntent;
    goto :goto_4b

    .line 350
    .end local v14           #returnPendingIntent:Landroid/app/PendingIntent;
    .end local v15           #target:Landroid/content/IIntentSender;
    :catch_80
    move-exception v1

    .line 352
    const/4 v14, 0x0

    goto :goto_6d
.end method

.method public static getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 20
    .parameter "context"
    .parameter "requestCode"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 377
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, packageName:Ljava/lang/String;
    if-eqz p2, :cond_81

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7b

    .line 389
    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 399
    .local v10, OriCheckAlarmString:Ljava/lang/String;
    :goto_15
    if-eqz p2, :cond_87

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v13

    .line 402
    .local v13, resolvedType:Ljava/lang/String;
    :goto_21
    const/4 v1, 0x0

    :try_start_22
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 403
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object p2, v7, v6

    if-eqz v13, :cond_89

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v8, v6

    :goto_3c
    move/from16 v6, p1

    move/from16 v9, p3

    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v15

    .line 412
    .local v15, target:Landroid/content/IIntentSender;
    if-eqz v15, :cond_8b

    .line 413
    new-instance v14, Landroid/app/PendingIntent;

    invoke-direct {v14, v15}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    .line 417
    .local v14, returnPendingIntent:Landroid/app/PendingIntent;
    :goto_4b
    const-string v1, "alarm"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v11

    .line 422
    .local v11, alarmInterface:Landroid/app/IAlarmManager;
    if-eqz v11, :cond_7a

    sget-object v1, Landroid/app/PendingIntent;->GOOGLE_FACEBOOK_PROPERTY:Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6d

    if-eqz p2, :cond_7a

    const-string/jumbo v1, "missedKeepalive"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 426
    :cond_6d
    const-string v1, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager;

    .line 427
    .local v12, mAlarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v12, v14}, Landroid/app/AlarmManager;->setAPPAlarmPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_7a} :catch_8d

    .line 436
    .end local v11           #alarmInterface:Landroid/app/IAlarmManager;
    .end local v12           #mAlarmManager:Landroid/app/AlarmManager;
    .end local v14           #returnPendingIntent:Landroid/app/PendingIntent;
    .end local v15           #target:Landroid/content/IIntentSender;
    :cond_7a
    :goto_7a
    return-object v14

    .line 392
    .end local v10           #OriCheckAlarmString:Ljava/lang/String;
    .end local v13           #resolvedType:Ljava/lang/String;
    :cond_7b
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .restart local v10       #OriCheckAlarmString:Ljava/lang/String;
    goto :goto_15

    .line 395
    .end local v10           #OriCheckAlarmString:Ljava/lang/String;
    :cond_81
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .restart local v10       #OriCheckAlarmString:Ljava/lang/String;
    goto :goto_15

    .line 399
    :cond_87
    const/4 v13, 0x0

    goto :goto_21

    .line 403
    .restart local v13       #resolvedType:Ljava/lang/String;
    :cond_89
    const/4 v8, 0x0

    goto :goto_3c

    .line 415
    .restart local v15       #target:Landroid/content/IIntentSender;
    :cond_8b
    const/4 v14, 0x0

    .restart local v14       #returnPendingIntent:Landroid/app/PendingIntent;
    goto :goto_4b

    .line 434
    .end local v14           #returnPendingIntent:Landroid/app/PendingIntent;
    .end local v15           #target:Landroid/content/IIntentSender;
    :catch_8d
    move-exception v1

    .line 436
    const/4 v14, 0x0

    goto :goto_7a
.end method

.method public static readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    .registers 3
    .parameter "in"

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 732
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_c

    new-instance v1, Landroid/app/PendingIntent;

    invoke-direct {v1, v0}, Landroid/app/PendingIntent;-><init>(Landroid/os/IBinder;)V

    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V
    .registers 3
    .parameter "sender"
    .parameter "out"

    .prologue
    .line 716
    if-eqz p0, :cond_c

    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 718
    return-void

    .line 716
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public addIntentHtcFlag(I)V
    .registers 5
    .parameter "iHtcFlag"

    .prologue
    .line 782
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->addIntentHtcFlag(Landroid/content/IIntentSender;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 787
    :goto_9
    return-void

    .line 783
    :catch_a
    move-exception v0

    .line 784
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PendingIntent"

    const-string v2, "[GhostScreen] Append intent htc flag fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 455
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->cancelIntentSender(Landroid/content/IIntentSender;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 458
    :goto_9
    return-void

    .line 456
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "otherObj"

    .prologue
    .line 663
    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_17

    .line 664
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Landroid/app/PendingIntent;

    .end local p1
    iget-object v1, p1, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 667
    :goto_16
    return v0

    .restart local p1
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 750
    :try_start_0
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->getIntent()Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 752
    :goto_6
    return-object v1

    .line 751
    :catch_7
    move-exception v0

    .line 752
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getIntentSender()Landroid/content/IntentSender;
    .registers 3

    .prologue
    .line 446
    new-instance v0, Landroid/content/IntentSender;

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    return-object v0
.end method

.method public getIntentSenderPerformType()I
    .registers 4

    .prologue
    .line 761
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getIntentSenderPerformType(Landroid/content/IIntentSender;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 763
    :goto_a
    return v1

    .line 762
    :catch_b
    move-exception v0

    .line 763
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getTarget()Landroid/content/IIntentSender;
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    return-object v0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 630
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 634
    :goto_a
    return-object v1

    .line 632
    :catch_b
    move-exception v0

    .line 634
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isTargetedToPackage()Z
    .registers 4

    .prologue
    .line 644
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 648
    :goto_a
    return v1

    .line 646
    :catch_b
    move-exception v0

    .line 648
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public send()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 469
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public send(I)V
    .registers 9
    .parameter "code"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 483
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public send(ILandroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .registers 11
    .parameter "code"
    .parameter "onFinished"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 524
    move-object v0, p0

    move v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 503
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    .registers 13
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .parameter "onFinished"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    .line 560
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "code"
    .parameter "intent"
    .parameter "onFinished"
    .parameter "handler"
    .parameter "requiredPermission"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 603
    if-eqz p3, :cond_2a

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, resolvedType:Ljava/lang/String;
    :goto_b
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz p4, :cond_14

    new-instance v4, Landroid/app/PendingIntent$FinishedDispatcher;

    invoke-direct {v4, p0, p4, p5}, Landroid/app/PendingIntent$FinishedDispatcher;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    :cond_14
    move v1, p2

    move-object v2, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/content/IIntentSender;->send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;)I

    move-result v7

    .line 611
    .local v7, res:I
    if-gez v7, :cond_2c

    .line 612
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0}, Landroid/app/PendingIntent$CanceledException;-><init>()V

    throw v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_23} :catch_23

    .line 614
    .end local v3           #resolvedType:Ljava/lang/String;
    .end local v7           #res:I
    :catch_23
    move-exception v6

    .line 615
    .local v6, e:Landroid/os/RemoteException;
    new-instance v0, Landroid/app/PendingIntent$CanceledException;

    invoke-direct {v0, v6}, Landroid/app/PendingIntent$CanceledException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2a
    move-object v3, v4

    .line 603
    goto :goto_b

    .line 617
    .restart local v3       #resolvedType:Ljava/lang/String;
    .restart local v7       #res:I
    :cond_2c
    return-void
.end method

.method public setIntentHtcFlag(I)V
    .registers 5
    .parameter "iHtcFlag"

    .prologue
    .line 770
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1, v2, p1}, Landroid/app/IActivityManager;->setIntentHtcFlag(Landroid/content/IIntentSender;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 775
    :goto_9
    return-void

    .line 771
    :catch_a
    move-exception v0

    .line 772
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PendingIntent"

    const-string v2, "[GhostScreen] Write intent htc flag fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 678
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "PendingIntent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 682
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 681
    :cond_33
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 691
    iget-object v0, p0, Landroid/app/PendingIntent;->mTarget:Landroid/content/IIntentSender;

    invoke-interface {v0}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 692
    return-void
.end method
