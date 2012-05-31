.class public final Lcom/htc/customize/storage/customize/HtcCustomizedLocale;
.super Ljava/lang/Object;
.source "HtcCustomizedLocale.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "system"

.field private static final MODULE_NAME:Ljava/lang/String; = "locale"

.field private static final ORDERED_LOCALE_LIST:Ljava/lang/String; = "total_list"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalList(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 67
    .local v1, localeList:[Ljava/lang/String;
    const-string/jumbo v2, "system"

    const-string/jumbo v3, "locale"

    invoke-static {p0, v2, v3}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v0

    .line 70
    .local v0, customizedData:Lcom/htc/customize/storage/customize/HtcCustomizedData;
    invoke-virtual {v0}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 73
    invoke-static {v0}, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->readCustomizedLocaleList(Lcom/htc/customize/storage/customize/HtcCustomizedData;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_15
    if-nez v1, :cond_1b

    .line 77
    invoke-static {p0}, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->readDefaultLocaleList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_1b
    return-object v1
.end method

.method private static readCustomizedLocaleList(Lcom/htc/customize/storage/customize/HtcCustomizedData;)[Ljava/lang/String;
    .registers 10
    .parameter "customizedData"

    .prologue
    const/4 v5, 0x0

    .line 95
    const-string/jumbo v8, "total_list"

    invoke-virtual {p0, v8}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getStringWithFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, orderedLocales:Ljava/lang/String;
    if-nez v7, :cond_b

    .line 132
    :cond_a
    return-object v5

    .line 102
    :cond_b
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, orderedLocaleList:[Ljava/lang/String;
    array-length v8, v6

    new-array v2, v8, [Z

    .line 108
    .local v2, enabledList:[Z
    const/4 v0, 0x0

    .local v0, count:I
    move v3, v0

    .local v3, i:I
    :goto_16
    array-length v8, v6

    if-ge v3, v8, :cond_34

    .line 109
    aget-object v8, v6, v3

    invoke-virtual {p0, v8}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getStringWithFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, locale:Ljava/lang/String;
    const-string/jumbo v8, "yes"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 113
    const/4 v8, 0x1

    aput-boolean v8, v2, v3

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 108
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 116
    :cond_30
    const/4 v8, 0x0

    aput-boolean v8, v2, v3

    goto :goto_2d

    .line 121
    .end local v4           #locale:Ljava/lang/String;
    :cond_34
    if-eqz v0, :cond_a

    .line 126
    new-array v5, v0, [Ljava/lang/String;

    .line 127
    .local v5, newLocaleList:[Ljava/lang/String;
    const/4 v0, 0x0

    move v3, v0

    :goto_3a
    array-length v8, v6

    if-ge v3, v8, :cond_a

    .line 128
    aget-boolean v8, v2, v3

    if-eqz v8, :cond_48

    .line 129
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aget-object v8, v6, v3

    aput-object v8, v5, v0

    move v0, v1

    .line 127
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a
.end method

.method private static readDefaultLocaleList(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, localeList:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 149
    return-object v0
.end method
