.class public final Landroid/provider/ContactsContract$Data;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/data"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4337
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4331
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 13
    .parameter "resolver"
    .parameter "dataUri"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4358
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v1

    const-string/jumbo v0, "lookup"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4362
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 4364
    .local v10, lookupUri:Landroid/net/Uri;
    if-eqz v8, :cond_3b

    :try_start_1a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4365
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4366
    .local v6, contactId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4367
    .local v9, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_34

    move-result-object v10

    .line 4370
    .end local v10           #lookupUri:Landroid/net/Uri;
    if-eqz v8, :cond_33

    .end local v6           #contactId:J
    .end local v9           #lookupKey:Ljava/lang/String;
    :goto_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4372
    :cond_33
    return-object v10

    .line 4370
    .restart local v10       #lookupUri:Landroid/net/Uri;
    :catchall_34
    move-exception v0

    if-eqz v8, :cond_3a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3a
    throw v0

    :cond_3b
    if-eqz v8, :cond_33

    goto :goto_30
.end method
