.class public Lcom/android/internal/widget/DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/DigitalClock$AmPm;,
        Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final COLOR_WHITE:I = -0x1

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeDisplayBackground:Landroid/widget/TextView;

.field private mTimeDisplayForeground:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/DigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    .line 69
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/DigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 165
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/DigitalClock;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/DigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .registers 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/internal/widget/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "kk:mm"

    :goto_c
    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 253
    return-void

    .line 250
    :cond_1c
    const-string v0, "h:mm"

    goto :goto_c
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 186
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 188
    iget v1, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    .line 191
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_2f

    .line 192
    new-instance v1, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/DigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/DigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_48

    .line 202
    new-instance v1, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/DigitalClock;)V

    iput-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 203
    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    :cond_48
    invoke-virtual {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 208
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 214
    iget v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/DigitalClock;->mAttached:I

    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_24

    .line 220
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 224
    :cond_24
    iput-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 225
    iput-object v2, p0, Lcom/android/internal/widget/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 172
    const v0, 0x102028f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    sget-object v1, Lcom/android/internal/widget/DigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    const v0, 0x1020290

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    sget-object v1, Lcom/android/internal/widget/DigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    new-instance v0, Lcom/android/internal/widget/DigitalClock$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/DigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 181
    invoke-direct {p0}, Lcom/android/internal/widget/DigitalClock;->setDateFormat()V

    .line 182
    return-void
.end method

.method public updateTime()V
    .registers 7

    .prologue
    .line 234
    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 236
    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 237
    .local v1, newTime:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v4, p0, Lcom/android/internal/widget/DigitalClock;->mAmPm:Lcom/android/internal/widget/DigitalClock$AmPm;

    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_43

    const/4 v3, 0x1

    :goto_28
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 241
    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 243
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v3, "lockscreen_custom_text_color"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, mLockscreenColor:I
    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v3, p0, Lcom/android/internal/widget/DigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    return-void

    .line 239
    .end local v0           #mLockscreenColor:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_43
    const/4 v3, 0x0

    goto :goto_28
.end method

.method updateTime(Ljava/util/Calendar;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/DigitalClock;->updateTime()V

    .line 231
    return-void
.end method
