.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioStreamType:I

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mSmallIcon:I

.field private mSmallIconLevel:I

.field private mSound:Landroid/net/Uri;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mVibrate:[J

.field private mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 683
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 684
    return-void
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_7

    .line 1001
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 1003
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    const v0, 0x1090098

    :goto_e
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_6

    :cond_13
    const v0, 0x1090099

    goto :goto_e
.end method

.method private makeRemoteViews(I)Landroid/widget/RemoteViews;
    .registers 12
    .parameter "resId"

    .prologue
    const v9, 0x102000d

    const v7, 0x1020006

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v8, 0x102032e

    .line 951
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 952
    .local v0, contentView:Landroid/widget/RemoteViews;
    const/4 v2, 0x0

    .line 953
    .local v2, hasLine3:Z
    iget v6, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    if-eqz v6, :cond_7a

    .line 954
    iget v6, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 955
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 959
    :goto_24
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_30

    .line 960
    const v6, 0x1020016

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 962
    :cond_30
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3d

    .line 963
    const v6, 0x1020046

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 964
    const/4 v2, 0x1

    .line 966
    :cond_3d
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v6, :cond_7e

    .line 967
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 968
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 969
    const/4 v2, 0x1

    .line 985
    :goto_4a
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v6, :cond_52

    iget-boolean v6, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v6, :cond_bb

    .line 986
    :cond_52
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    iget v7, p0, Landroid/app/Notification$Builder;->mProgress:I

    iget-boolean v8, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {v0, v9, v6, v7, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 988
    invoke-virtual {v0, v9, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 992
    :goto_5e
    iget-wide v6, p0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_71

    .line 993
    const v6, 0x1020064

    const-string/jumbo v7, "setTime"

    iget-wide v8, p0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 995
    :cond_71
    const v6, 0x102032d

    if-eqz v2, :cond_bf

    :goto_76
    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 996
    return-object v0

    .line 957
    :cond_7a
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_24

    .line 970
    :cond_7e
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v6, :cond_b7

    .line 971
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 973
    .local v3, tooBig:I
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v6, v3, :cond_a8

    .line 974
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 980
    :goto_a3
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 981
    const/4 v2, 0x1

    .line 982
    goto :goto_4a

    .line 977
    :cond_a8
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 978
    .local v1, f:Ljava/text/NumberFormat;
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_a3

    .line 983
    .end local v1           #f:Ljava/text/NumberFormat;
    .end local v3           #tooBig:I
    :cond_b7
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_4a

    .line 990
    :cond_bb
    invoke-virtual {v0, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_5e

    :cond_bf
    move v4, v5

    .line 995
    goto :goto_76
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_7

    .line 1011
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 1018
    :goto_6
    return-object v0

    .line 1013
    :cond_7
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1b

    .line 1014
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_17

    const v0, 0x109009a

    :goto_12
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_6

    :cond_17
    const v0, 0x109009b

    goto :goto_12

    .line 1018
    :cond_1b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private setFlag(IZ)V
    .registers 5
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 943
    if-eqz p2, :cond_8

    .line 944
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 948
    :goto_7
    return-void

    .line 946
    :cond_8
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_7
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .registers 4

    .prologue
    .line 1028
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 1029
    .local v0, n:Landroid/app/Notification;
    iget-wide v1, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    .line 1030
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 1031
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 1032
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 1033
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1034
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1035
    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1036
    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 1037
    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1038
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 1039
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 1040
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1041
    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1042
    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 1043
    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1044
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 1045
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 1046
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1047
    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1048
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-eqz v1, :cond_63

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v1, :cond_63

    .line 1049
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1051
    :cond_63
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6f

    .line 1052
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1054
    :cond_6f
    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "autoCancel"

    .prologue
    .line 924
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 925
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "views"

    .prologue
    .line 772
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 773
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "info"

    .prologue
    .line 753
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 754
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "intent"

    .prologue
    .line 785
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 786
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "text"

    .prologue
    .line 735
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 736
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "title"

    .prologue
    .line 727
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 728
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "defaults"

    .prologue
    .line 938
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 939
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "intent"

    .prologue
    .line 797
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 798
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .registers 4
    .parameter "intent"
    .parameter "highPriority"

    .prologue
    .line 815
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 816
    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 817
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "icon"

    .prologue
    .line 844
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 845
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .registers 4
    .parameter "argb"
    .parameter "onMs"
    .parameter "offMs"

    .prologue
    .line 886
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 887
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 888
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 889
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "number"

    .prologue
    .line 745
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 746
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "ongoing"

    .prologue
    .line 904
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 905
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "onlyAlertOnce"

    .prologue
    .line 913
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 914
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .registers 4
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    .line 762
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 763
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 764
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 765
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "icon"

    .prologue
    .line 703
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 704
    return-object p0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "icon"
    .parameter "level"

    .prologue
    .line 718
    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    .line 719
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 720
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "sound"

    .prologue
    .line 852
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 853
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 854
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "sound"
    .parameter "streamType"

    .prologue
    .line 864
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 865
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 866
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "tickerText"

    .prologue
    .line 825
    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 826
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "tickerText"
    .parameter "views"

    .prologue
    .line 835
    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 836
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 837
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .registers 2
    .parameter "pattern"

    .prologue
    .line 876
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 877
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .registers 3
    .parameter "when"

    .prologue
    .line 691
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 692
    return-object p0
.end method
