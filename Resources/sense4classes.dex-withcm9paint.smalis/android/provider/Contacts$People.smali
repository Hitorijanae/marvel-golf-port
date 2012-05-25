.class public final Landroid/provider/Contacts$People;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/SyncConstValue;
.implements Landroid/provider/Contacts$PeopleColumns;
.implements Landroid/provider/Contacts$PhonesColumns;
.implements Landroid/provider/Contacts$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "People"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$People$Extensions;,
        Landroid/provider/Contacts$People$ContactMethods;,
        Landroid/provider/Contacts$People$Phones;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri; = null

.field public static final CONTENT_EAS_URI:Landroid/net/Uri; = null

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE_WITH_PHONE_MAIL:Ljava/lang/String; = "vnd.android.cursor.dir/phone-and-mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EAS_CONTACTS_URI:Landroid/net/Uri; = null

.field public static final EAS_TRACKING_URI:Landroid/net/Uri; = null

.field private static final GROUPS_PROJECTION:[Ljava/lang/String; = null

.field private static final GROUPS_SYNC_ID_PROJECTION:[Ljava/lang/String; = null

.field public static final LIST_PEOPLE_BY_ID_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEMBER_CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NON_MEMBER_AND_PID_CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NON_MEMBER_CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PCSC_TRACKING_URI:Landroid/net/Uri; = null

.field public static final PEOPLE_WITH_THUMBNAIL:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIMARY_EMAIL_ID:Ljava/lang/String; = "primary_email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIMARY_ORGANIZATION_ID:Ljava/lang/String; = "primary_organization"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIMARY_PHONE_ID:Ljava/lang/String; = "primary_phone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNCML_TRACKING_URI:Landroid/net/Uri;

.field public static final WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 441
    const-string v0, "content://contacts/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 450
    const-string v0, "content://contacts/people/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 459
    const-string v0, "content://contacts/deleted_people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 475
    const-string v0, "content://contacts/people/with_email_or_im_filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;

    .line 489
    const-string v0, "content://com.android.contacts/eas_people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->EAS_CONTACTS_URI:Landroid/net/Uri;

    .line 500
    const-string v0, "content://com.android.contacts/eas_tracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->EAS_TRACKING_URI:Landroid/net/Uri;

    .line 513
    const-string v0, "content://com.android.contacts/people/eas_sync"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_EAS_URI:Landroid/net/Uri;

    .line 525
    const-string v0, "content://com.android.contacts/easSyncInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_EAS_SYNCINFO_URI:Landroid/net/Uri;

    .line 535
    const-string v0, "content://com.android.contacts/pcsc_tracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->PCSC_TRACKING_URI:Landroid/net/Uri;

    .line 542
    const-string v0, "content://com.android.contacts/syncml_tracking"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->SYNCML_TRACKING_URI:Landroid/net/Uri;

    .line 559
    const-string v0, "content://contacts/PeopleListByID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->LIST_PEOPLE_BY_ID_URI:Landroid/net/Uri;

    .line 578
    const-string v0, "content://contacts/GGroupMemberList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    .line 598
    const-string v0, "content://contacts/GGroupExcludeMemberList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->NON_MEMBER_CONTENT_URI:Landroid/net/Uri;

    .line 621
    const-string v0, "content://contacts/GGroupExcludeMemberList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->NON_MEMBER_AND_PID_CONTENT_URI:Landroid/net/Uri;

    .line 635
    const-string v0, "content://contacts/people/thumbnail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->PEOPLE_WITH_THUMBNAIL:Landroid/net/Uri;

    .line 805
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    .line 870
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Contacts$People;->GROUPS_SYNC_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 434
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    .registers 8
    .parameter "resolver"
    .parameter "personId"
    .parameter "groupId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 799
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 800
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "person"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 801
    const-string v1, "group_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 802
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static addToGroup(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/net/Uri;
    .registers 13
    .parameter "resolver"
    .parameter "personId"
    .parameter "groupName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 768
    const-wide/16 v6, 0x0

    .line 769
    .local v6, groupId:J
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p3, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 771
    .local v8, groupsCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_25

    .line 773
    :try_start_17
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 774
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_33

    move-result-wide v6

    .line 777
    :cond_22
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 781
    :cond_25
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_38

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find the My Contacts group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :catchall_33
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 785
    :cond_38
    invoke-static {p0, p1, p2, v6, v7}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;
    .registers 7
    .parameter "resolver"
    .parameter "personId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 748
    invoke-static {p0}, Landroid/provider/Contacts$People;->tryGetMyContactsGroupId(Landroid/content/ContentResolver;)J

    move-result-wide v0

    .line 749
    .local v0, groupId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 750
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to find the My Contacts group"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 753
    :cond_12
    invoke-static {p0, p1, p2, v0, v1}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static addToMyContactsGroupIfNeed(Landroid/content/ContentResolver;J)Landroid/net/Uri;
    .registers 14
    .parameter "resolver"
    .parameter "personId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 953
    const-wide/16 v8, 0x0

    .line 955
    .local v8, groupId:J
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "extra_group"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 957
    .local v7, extra_group_cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1c

    .line 958
    const/4 v0, 0x0

    .line 987
    :goto_1b
    return-object v0

    .line 960
    :cond_1c
    invoke-static {}, Landroid/provider/Contacts$Groups;->getDefaultExtraGroup()I

    move-result v6

    .line 961
    .local v6, extra_group:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 962
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 968
    :goto_2b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 970
    if-nez v6, :cond_68

    .line 971
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "system_id=\'Contacts\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 973
    .local v10, groupsCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_4e

    .line 975
    :try_start_40
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 976
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_5e

    move-result-wide v8

    .line 979
    :cond_4b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 982
    :cond_4e
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_63

    .line 983
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find the My Contacts group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    .end local v10           #groupsCursor:Landroid/database/Cursor;
    :cond_5c
    const/4 v6, 0x0

    goto :goto_2b

    .line 979
    .restart local v10       #groupsCursor:Landroid/database/Cursor;
    :catchall_5e
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 985
    :cond_63
    invoke-static {p0, p1, p2, v8, v9}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1b

    .line 987
    .end local v10           #groupsCursor:Landroid/database/Cursor;
    :cond_68
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static clearFacebookPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4
    .parameter "cr"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1092
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v1, v0}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B[BZ)V

    .line 1093
    return-void
.end method

.method public static createPersonAsDefaultType(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8
    .parameter "resolver"
    .parameter "values"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 914
    const-string v4, "extra_group"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 915
    .local v1, extra_group:Ljava/lang/Integer;
    if-nez v1, :cond_11

    .line 916
    invoke-static {}, Landroid/provider/Contacts$Groups;->getDefaultExtraGroup()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 919
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 920
    .local v2, extra_group_value:I
    const-string v4, "extra_group"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v4, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 923
    .local v0, contactUri:Landroid/net/Uri;
    if-nez v0, :cond_2f

    .line 924
    const-string v4, "Contacts"

    const-string v5, "Failed to create the contact"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 935
    .end local v0           #contactUri:Landroid/net/Uri;
    :cond_2e
    :goto_2e
    return-object v0

    .line 928
    .restart local v0       #contactUri:Landroid/net/Uri;
    :cond_2f
    if-nez v2, :cond_2e

    .line 929
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroid/provider/Contacts$People;->addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_2e

    .line 930
    invoke-virtual {p0, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, v3

    .line 931
    goto :goto_2e
.end method

.method public static createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "resolver"
    .parameter "values"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 886
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 887
    .local v0, contactUri:Landroid/net/Uri;
    if-nez v0, :cond_12

    .line 888
    const-string v2, "Contacts"

    const-string v3, "Failed to create the contact"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 896
    .end local v0           #contactUri:Landroid/net/Uri;
    :cond_11
    :goto_11
    return-object v0

    .line 892
    .restart local v0       #contactUri:Landroid/net/Uri;
    :cond_12
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/provider/Contacts$People;->addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_11

    .line 893
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, v1

    .line 894
    goto :goto_11
.end method

.method public static hasContactPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 11
    .parameter "cr"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1224
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1226
    .local v1, photoUri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v7

    const-string v0, "facebook_photo_data"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1227
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_20

    move v0, v7

    .line 1243
    :goto_1f
    return v0

    .line 1233
    :cond_20
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_3e

    move-result v0

    if-nez v0, :cond_2b

    .line 1240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1234
    goto :goto_1f

    .line 1235
    :cond_2b
    const/4 v0, 0x1

    :try_start_2c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-nez v0, :cond_39

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_3e

    move-result-object v0

    if-eqz v0, :cond_43

    .line 1240
    :cond_39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1236
    goto :goto_1f

    .line 1240
    :catchall_3e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1243
    goto :goto_1f
.end method

.method public static hasFacebookContactPhoto(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .registers 11
    .parameter "cr"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 1194
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1196
    .local v1, photoUri:Landroid/net/Uri;
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "facebook_photo_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1197
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1b

    move v0, v7

    .line 1211
    :goto_1a
    return v0

    .line 1201
    :cond_1b
    :try_start_1b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_32

    move-result v0

    if-nez v0, :cond_26

    .line 1208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1202
    goto :goto_1a

    .line 1204
    :cond_26
    const/4 v0, 0x0

    :try_start_27
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_32

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1208
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 1205
    goto :goto_1a

    .line 1208
    :catchall_32
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_37
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1211
    goto :goto_1a
.end method

.method public static loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "context"
    .parameter "person"
    .parameter "placeholderImageResource"
    .parameter "options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1364
    if-nez p1, :cond_8

    .line 1365
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1373
    :cond_7
    :goto_7
    return-object v0

    .line 1368
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1369
    .local v1, stream:Ljava/io/InputStream;
    if-eqz v1, :cond_16

    invoke-static {v1, v0, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1370
    .local v0, bm:Landroid/graphics/Bitmap;
    :cond_16
    if-nez v0, :cond_7

    .line 1371
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method public static loadContactPhotoFacebook(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "context"
    .parameter "person"
    .parameter "placeholderImageResource"
    .parameter "options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1299
    if-eqz p1, :cond_46

    .line 1301
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1302
    .local v1, photoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data"

    aput-object v4, v2, v5

    const-string v4, "facebook_photo_data"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1303
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_46

    .line 1307
    :try_start_23
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1308
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 1309
    .local v8, dataPhoto:[B
    if-nez v8, :cond_35

    .line 1310
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_3e

    move-result-object v8

    .line 1311
    :cond_35
    if-eqz v8, :cond_43

    .line 1313
    const/4 v6, 0x0

    .line 1314
    .local v6, bm:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_43

    .line 1320
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1324
    .end local v1           #photoUri:Landroid/net/Uri;
    .end local v6           #bm:Landroid/graphics/Bitmap;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #dataPhoto:[B
    :goto_3d
    return-object v6

    .line 1320
    .restart local v1       #photoUri:Landroid/net/Uri;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_3e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_43
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1324
    .end local v1           #photoUri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_46
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3d
.end method

.method public static loadContactPhotoFacebook(Landroid/content/Context;Landroid/net/Uri;)[B
    .registers 11
    .parameter "context"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1261
    if-eqz p1, :cond_41

    .line 1262
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1263
    .local v1, photoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data"

    aput-object v4, v2, v5

    const-string v4, "facebook_photo_data"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1264
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_41

    .line 1266
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1267
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 1268
    .local v7, photoData:[B
    if-nez v7, :cond_35

    .line 1269
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_39

    move-result-object v7

    .line 1274
    :cond_35
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1278
    .end local v1           #photoUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #photoData:[B
    :goto_38
    return-object v7

    .line 1274
    .restart local v1       #photoUri:Landroid/net/Uri;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_39
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1           #photoUri:Landroid/net/Uri;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_41
    move-object v7, v3

    .line 1278
    goto :goto_38
.end method

.method public static loadContactPhotoThumbnail(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "context"
    .parameter "person"
    .parameter "placeholderImageResource"
    .parameter "options"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1339
    if-eqz p1, :cond_e

    .line 1340
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1341
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    .line 1342
    const/4 v2, 0x0

    .line 1347
    .end local v0           #contactId:J
    :goto_d
    return-object v2

    :cond_e
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_d
.end method

.method private static loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "placeholderImageResource"
    .parameter "context"
    .parameter "options"

    .prologue
    .line 1378
    if-nez p0, :cond_4

    .line 1379
    const/4 v0, 0x0

    .line 1381
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static markAsContacted(Landroid/content/ContentResolver;J)V
    .registers 9
    .parameter "resolver"
    .parameter "personId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 708
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 709
    .local v0, uri:Landroid/net/Uri;
    const-string/jumbo v2, "update_contact_time"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 710
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v1, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "last_time_contacted"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 714
    invoke-virtual {p0, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 715
    return-void
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 20
    .parameter "cr"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1107
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 1109
    .local v15, sLastPathSegment:Ljava/lang/String;
    const-string v1, "facebook_photo_data"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1110
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1111
    .local v17, sUri:Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v3, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1112
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "photo"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1114
    .local v2, photoUri:Landroid/net/Uri;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "data"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "facebook_photo_data"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1115
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_44

    .line 1116
    const/4 v1, 0x0

    .line 1181
    .end local v2           #photoUri:Landroid/net/Uri;
    .end local v17           #sUri:Ljava/lang/String;
    :goto_43
    return-object v1

    .line 1119
    .restart local v2       #photoUri:Landroid/net/Uri;
    .restart local v17       #sUri:Ljava/lang/String;
    :cond_44
    :try_start_44
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_5c

    move-result v1

    if-nez v1, :cond_4f

    .line 1120
    const/4 v1, 0x0

    .line 1132
    :goto_4b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_43

    .line 1122
    :cond_4f
    const/4 v1, 0x1

    :try_start_50
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 1123
    .local v14, dataFacebook:[B
    if-eqz v14, :cond_61

    .line 1124
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_5c

    goto :goto_4b

    .line 1132
    .end local v14           #dataFacebook:[B
    :catchall_5c
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1126
    .restart local v14       #dataFacebook:[B
    :cond_61
    const/4 v1, 0x0

    :try_start_62
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 1127
    .local v13, data:[B
    if-nez v13, :cond_6a

    .line 1128
    const/4 v1, 0x0

    goto :goto_4b

    .line 1130
    :cond_6a
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6f
    .catchall {:try_start_62 .. :try_end_6f} :catchall_5c

    goto :goto_4b

    .line 1135
    .end local v2           #photoUri:Landroid/net/Uri;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #data:[B
    .end local v14           #dataFacebook:[B
    .end local v17           #sUri:Ljava/lang/String;
    :cond_70
    const-string/jumbo v1, "thumbnail"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 1136
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "photo"

    aput-object v3, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1137
    .restart local v12       #cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_cc

    .line 1139
    :try_start_8f
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1140
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1141
    .local v16, sPhotoPath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c9

    .line 1142
    invoke-static/range {v16 .. v16}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1143
    .local v11, bm:Landroid/graphics/Bitmap;
    if-eqz v11, :cond_c9

    .line 1144
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1145
    .local v10, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x5a

    .line 1146
    .local v9, COMPESS_QUALITY:I
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v11, v1, v3, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1147
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c0
    .catchall {:try_start_8f .. :try_end_c0} :catchall_c4

    .line 1153
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_43

    .end local v9           #COMPESS_QUALITY:I
    .end local v10           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v11           #bm:Landroid/graphics/Bitmap;
    .end local v16           #sPhotoPath:Ljava/lang/String;
    :catchall_c4
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_c9
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1156
    :cond_cc
    const/4 v1, 0x0

    goto/16 :goto_43

    .line 1160
    .end local v12           #cursor:Landroid/database/Cursor;
    :cond_cf
    const-string/jumbo v1, "photo"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1161
    .restart local v2       #photoUri:Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "data"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1163
    .restart local v12       #cursor:Landroid/database/Cursor;
    if-nez v12, :cond_ee

    .line 1165
    const/4 v1, 0x0

    goto/16 :goto_43

    .line 1172
    :cond_ee
    :try_start_ee
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_109

    move-result v1

    if-nez v1, :cond_fa

    .line 1175
    const/4 v1, 0x0

    .line 1184
    :goto_f5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_43

    .line 1177
    :cond_fa
    const/4 v1, 0x0

    :try_start_fb
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 1178
    .restart local v13       #data:[B
    if-nez v13, :cond_103

    .line 1179
    const/4 v1, 0x0

    goto :goto_f5

    .line 1181
    :cond_103
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_108
    .catchall {:try_start_fb .. :try_end_108} :catchall_109

    goto :goto_f5

    .line 1184
    .end local v13           #data:[B
    :catchall_109
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static openSquareContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "cr"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1392
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1393
    .local v1, photoUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1394
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1a

    .line 1408
    :goto_19
    return-object v3

    .line 1401
    :cond_1a
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2c

    move-result v0

    if-nez v0, :cond_24

    .line 1410
    :cond_20
    :goto_20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_19

    .line 1404
    :cond_24
    const/4 v0, 0x0

    :try_start_25
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2c

    move-result-object v7

    .line 1405
    .local v7, data:[B
    if-nez v7, :cond_20

    goto :goto_20

    .line 1410
    .end local v7           #data:[B
    :catchall_2c
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static queryGroups(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .registers 9
    .parameter "resolver"
    .parameter "person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 995
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "person=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string/jumbo v5, "name ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static removeFromGroup(Landroid/content/ContentResolver;[JJ)I
    .registers 20
    .parameter "resolver"
    .parameter "personId"
    .parameter "groupId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 824
    const-string v9, ""

    .line 825
    .local v9, groupSyncId:Ljava/lang/String;
    sget-object v3, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Contacts$People;->GROUPS_SYNC_ID_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 827
    .local v10, groupsCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_33

    .line 829
    :try_start_25
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 830
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_55

    move-result-object v9

    .line 833
    :cond_30
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 837
    :cond_33
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    .local v15, stringBuilder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_b4

    .line 839
    const-string v2, " IN ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    move-object/from16 v8, p1

    .local v8, arr$:[J
    array-length v14, v8

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_46
    if-ge v13, v14, :cond_5a

    aget-wide v11, v8, v13

    .line 841
    .local v11, i:J
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 842
    const-string v2, ","

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    add-int/lit8 v13, v13, 0x1

    goto :goto_46

    .line 833
    .end local v8           #arr$:[J
    .end local v11           #i:J
    .end local v13           #i$:I
    .end local v14           #len$:I
    .end local v15           #stringBuilder:Ljava/lang/StringBuilder;
    :catchall_55
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 844
    .restart local v8       #arr$:[J
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #stringBuilder:Ljava/lang/StringBuilder;
    :cond_5a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_71

    .line 845
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 847
    :cond_71
    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    if-eqz v9, :cond_80

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 854
    :cond_80
    sget-object v2, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "group_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "person"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 860
    :goto_b3
    return v2

    .line 850
    .end local v8           #arr$:[J
    .end local v13           #i$:I
    .end local v14           #len$:I
    :cond_b4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There must be at least one person ID"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    .restart local v8       #arr$:[J
    .restart local v13       #i$:I
    .restart local v14       #len$:I
    :cond_bc
    sget-object v2, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(group_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "group_sync_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\') AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "person"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_b3
.end method

.method public static setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    .registers 7
    .parameter "cr"
    .parameter "person"
    .parameter "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1008
    const-string/jumbo v2, "photo"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1009
    .local v0, photoUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1010
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1011
    invoke-virtual {p0, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1012
    return-void
.end method

.method public static setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B[B)V
    .registers 9
    .parameter "cr"
    .parameter "person"
    .parameter "data"
    .parameter "overlayIconData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1028
    const-string v2, "Contacts"

    const-string/jumbo v3, "setPhotoData Facebook icon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const-string/jumbo v2, "photo"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1030
    .local v0, photoUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1031
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1032
    const-string/jumbo v2, "overlay_icon"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1033
    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1034
    return-void
.end method

.method public static setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B[BZ)V
    .registers 11
    .parameter "cr"
    .parameter "person"
    .parameter "data"
    .parameter "overlayIconData"
    .parameter "bFacebookData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1054
    if-eqz p4, :cond_41

    .line 1056
    const-string v2, "Contacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPhotoData FacebookData person uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const-string/jumbo v2, "photo"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1058
    .local v0, photoUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1059
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "facebook_photo_data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1060
    const-string/jumbo v2, "overlay_icon"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1061
    const-string v2, "facebookData"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1062
    invoke-virtual {p0, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1084
    .end local v0           #photoUri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_40
    return-void

    .line 1083
    :cond_41
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B[B)V

    goto :goto_40
.end method

.method public static tryGetMyContactsGroupId(Landroid/content/ContentResolver;)J
    .registers 8
    .parameter "resolver"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 723
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "system_id=\'Contacts\'"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 725
    .local v6, groupsCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_27

    .line 727
    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 728
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1f

    move-result-wide v0

    .line 731
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 734
    :goto_1e
    return-wide v0

    .line 731
    :catchall_1f
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 734
    :cond_27
    const-wide/16 v0, 0x0

    goto :goto_1e
.end method
