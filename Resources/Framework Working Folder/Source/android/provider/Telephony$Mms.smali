.class public final Landroid/provider/Telephony$Mms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$BaseMmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Mms$Intents;,
        Landroid/provider/Telephony$Mms$ScrapSpace;,
        Landroid/provider/Telephony$Mms$Rate;,
        Landroid/provider/Telephony$Mms$Part;,
        Landroid/provider/Telephony$Mms$Addr;,
        Landroid/provider/Telephony$Mms$Outbox;,
        Landroid/provider/Telephony$Mms$Draft;,
        Landroid/provider/Telephony$Mms$Sent;,
        Landroid/provider/Telephony$Mms$Inbox;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field public static final QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

.field public static final REPORT_REQUEST_URI:Landroid/net/Uri;

.field public static final REPORT_STATUS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2295
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2297
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "report-request"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    .line 2300
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "report-status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    .line 2313
    const-string v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 2321
    const-string v0, "\\s*\"([^\"]*)\"\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Mms;->QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2665
    return-void
.end method

.method public static extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "address"

    .prologue
    .line 2354
    sget-object v1, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2356
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2357
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 2359
    .end local p0
    :cond_11
    return-object p0
.end method

.method public static getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "address"

    .prologue
    .line 2388
    if-nez p1, :cond_5

    .line 2389
    const-string v2, ""

    .line 2413
    :cond_4
    :goto_4
    return-object v2

    .line 2392
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2393
    .local v1, localNumber:Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2394
    .local v3, values:[Ljava/lang/String;
    const-string v2, ""

    .line 2395
    .local v2, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v4, v3

    if-ge v0, v4, :cond_8e

    .line 2396
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_47

    .line 2397
    aget-object v4, v3, v0

    invoke-static {v4, v1}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 2398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x1040131

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2395
    :cond_47
    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 2400
    :cond_4a
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-static {p0, v5}, Landroid/provider/Telephony$Mms;->getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    .line 2403
    :cond_70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-static {p0, v5}, Lcom/android/internal/telephony/CallerInfo;->getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    .line 2409
    :cond_8e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 2411
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4
.end method

.method private static getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "email"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 2426
    sget-object v0, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 2427
    .local v9, match:Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2429
    invoke-virtual {v9, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->getEmailDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2452
    :goto_16
    return-object v10

    .line 2432
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "name"

    aput-object v4, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2438
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_69

    .line 2440
    :try_start_46
    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2442
    .local v7, columnIndex:I
    :cond_4d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2443
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2444
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_61

    move-result v0

    if-nez v0, :cond_4d

    .line 2449
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_16

    .end local v7           #columnIndex:I
    .end local v10           #name:Ljava/lang/String;
    :catchall_61
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #columnIndex:I
    :cond_66
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v7           #columnIndex:I
    :cond_69
    move-object v10, p1

    .line 2452
    goto :goto_16
.end method

.method private static getEmailDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "displayString"

    .prologue
    .line 2417
    sget-object v1, Landroid/provider/Telephony$Mms;->QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2418
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2419
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 2422
    .end local p0
    :cond_11
    return-object p0
.end method

.method public static final getMessageBoxName(I)Ljava/lang/String;
    .registers 4
    .parameter "msgBox"

    .prologue
    .line 2337
    packed-switch p0, :pswitch_data_2e

    .line 2349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid message box: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2339
    :pswitch_1c
    const-string v0, "all"

    .line 2347
    :goto_1e
    return-object v0

    .line 2341
    :pswitch_1f
    const-string/jumbo v0, "inbox"

    goto :goto_1e

    .line 2343
    :pswitch_23
    const-string/jumbo v0, "sent"

    goto :goto_1e

    .line 2345
    :pswitch_27
    const-string v0, "drafts"

    goto :goto_1e

    .line 2347
    :pswitch_2a
    const-string/jumbo v0, "outbox"

    goto :goto_1e

    .line 2337
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 2369
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2370
    const/4 v2, 0x0

    .line 2375
    :goto_7
    return v2

    .line 2373
    :cond_8
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2374
    .local v1, s:Ljava/lang/String;
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2375
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_7
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    .line 2463
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2464
    const/4 v1, 0x0

    .line 2468
    :goto_7
    return v1

    .line 2467
    :cond_8
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2468
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_7
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 2326
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 2332
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_f

    const-string v5, "date DESC"

    :goto_7
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_f
    move-object v5, p3

    goto :goto_7
.end method
