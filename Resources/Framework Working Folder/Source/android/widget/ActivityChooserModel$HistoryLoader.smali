.class final Landroid/widget/ActivityChooserModel$HistoryLoader;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HistoryLoader"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2
    .parameter

    .prologue
    .line 1254
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$HistoryLoader;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 1257
    const/4 v4, 0x0

    .line 1259
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$400(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_18} :catch_3b

    move-result-object v4

    .line 1276
    :try_start_19
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1277
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v12, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1279
    const/16 v17, 0x0

    .line 1280
    .local v17, type:I
    :goto_26
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_69

    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_69

    .line 1281
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_39} :catch_7e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_39} :catch_124

    move-result v17

    goto :goto_26

    .line 1260
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v17           #type:I
    :catch_3b
    move-exception v5

    .line 1265
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Landroid/widget/ActivityChooserModel;->mIsDefaultOrder:Z
    invoke-static/range {v21 .. v22}, Landroid/widget/ActivityChooserModel;->access$502(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Landroid/widget/ActivityChooserModel;->mIsHistoryReady:Z
    invoke-static/range {v21 .. v22}, Landroid/widget/ActivityChooserModel;->access$802(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$1000(Landroid/widget/ActivityChooserModel;)Landroid/os/Handler;

    move-result-object v21

    new-instance v22, Landroid/widget/ActivityChooserModel$HistoryLoader$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ActivityChooserModel$HistoryLoader$1;-><init>(Landroid/widget/ActivityChooserModel$HistoryLoader;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1374
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    :goto_68
    return-void

    .line 1284
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #type:I
    :cond_69
    :try_start_69
    const-string/jumbo v21, "historical-records"

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_ba

    .line 1285
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file does not start with historical-records tag."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_7e
    .catchall {:try_start_69 .. :try_end_7e} :catchall_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_7e} :catch_7e
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_7e} :catch_124

    .line 1358
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v17           #type:I
    :catch_7e
    move-exception v20

    .line 1359
    .local v20, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7f
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catchall {:try_start_7f .. :try_end_a9} :catchall_195

    .line 1363
    if-eqz v4, :cond_ae

    .line 1365
    :try_start_ab
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_203

    .line 1371
    :cond_ae
    :goto_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    .end local v20           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_b4
    const/16 v22, 0x1

    #setter for: Landroid/widget/ActivityChooserModel;->mIsHistoryReady:Z
    invoke-static/range {v21 .. v22}, Landroid/widget/ActivityChooserModel;->access$802(Landroid/widget/ActivityChooserModel;Z)Z

    goto :goto_68

    .line 1289
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17       #type:I
    :cond_ba
    :try_start_ba
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1292
    .local v14, readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_bf
    :goto_bf
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .line 1293
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_fd

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$1100(Landroid/widget/ActivityChooserModel;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_d6
    .catchall {:try_start_ba .. :try_end_d6} :catchall_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_d6} :catch_7e
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_d6} :catch_124

    .line 1324
    :try_start_d6
    new-instance v18, Ljava/util/LinkedHashSet;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1331
    .local v18, uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$1200(Landroid/widget/ActivityChooserModel;)Ljava/util/List;

    move-result-object v7

    .line 1332
    .local v7, historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1333
    .local v8, historicalRecordsCount:I
    add-int/lit8 v9, v8, -0x1

    .local v9, i:I
    :goto_ed
    if-ltz v9, :cond_1a7

    .line 1334
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1335
    .local v6, historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_fa
    .catchall {:try_start_d6 .. :try_end_fa} :catchall_1fe

    .line 1333
    add-int/lit8 v9, v9, -0x1

    goto :goto_ed

    .line 1296
    .end local v6           #historicalRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_fd
    const/16 v21, 0x3

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_bf

    const/16 v21, 0x4

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_bf

    .line 1299
    :try_start_10d
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1300
    .local v11, nodeName:Ljava/lang/String;
    const-string/jumbo v21, "historical-record"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_15a

    .line 1301
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Share records file not well-formed."

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_124
    .catchall {:try_start_10d .. :try_end_124} :catchall_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10d .. :try_end_124} :catch_7e
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_124} :catch_124

    .line 1360
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    :catch_124
    move-exception v10

    .line 1361
    .local v10, ioe:Ljava/io/IOException;
    :try_start_125
    invoke-static {}, Landroid/widget/ActivityChooserModel;->access$1500()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error reading historical recrod file: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v23, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/widget/ActivityChooserModel;->access$700(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14d
    .catchall {:try_start_125 .. :try_end_14d} :catchall_195

    .line 1363
    if-eqz v4, :cond_152

    .line 1365
    :try_start_14f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_206

    .line 1371
    :cond_152
    :goto_152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    goto/16 :goto_b4

    .line 1304
    .end local v10           #ioe:Ljava/io/IOException;
    .restart local v11       #nodeName:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    :cond_15a
    const/16 v21, 0x0

    :try_start_15c
    const-string v22, "activity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1305
    .local v3, activity:Ljava/lang/String;
    const/16 v21, 0x0

    const-string/jumbo v22, "time"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 1307
    .local v15, time:J
    const/16 v21, 0x0

    const-string/jumbo v22, "weight"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 1310
    .local v19, weight:F
    new-instance v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    move-wide v0, v15

    move/from16 v2, v19

    invoke-direct {v13, v3, v0, v1, v2}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1312
    .local v13, readRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_193
    .catchall {:try_start_15c .. :try_end_193} :catchall_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15c .. :try_end_193} :catch_7e
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_193} :catch_124

    goto/16 :goto_bf

    .line 1363
    .end local v3           #activity:Ljava/lang/String;
    .end local v11           #nodeName:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #readRecord:Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v15           #time:J
    .end local v17           #type:I
    .end local v19           #weight:F
    :catchall_195
    move-exception v21

    if-eqz v4, :cond_19b

    .line 1365
    :try_start_198
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_201

    .line 1371
    :cond_19b
    :goto_19b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    #setter for: Landroid/widget/ActivityChooserModel;->mIsHistoryReady:Z
    invoke-static/range {v22 .. v23}, Landroid/widget/ActivityChooserModel;->access$802(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1363
    throw v21

    .line 1338
    .restart local v7       #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v8       #historicalRecordsCount:I
    .restart local v9       #i:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    .restart local v18       #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_1a7
    :try_start_1a7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->size()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c3

    .line 1339
    monitor-exit v22
    :try_end_1b6
    .catchall {:try_start_1a7 .. :try_end_1b6} :catchall_1fe

    .line 1363
    if-eqz v4, :cond_1bb

    .line 1365
    :try_start_1b8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_209

    .line 1371
    :cond_1bb
    :goto_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    goto/16 :goto_b4

    .line 1343
    :cond_1c3
    :try_start_1c3
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 1344
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    #setter for: Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->access$1302(Landroid/widget/ActivityChooserModel;Z)Z

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    #getter for: Landroid/widget/ActivityChooserModel;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Landroid/widget/ActivityChooserModel;->access$1000(Landroid/widget/ActivityChooserModel;)Landroid/os/Handler;

    move-result-object v21

    new-instance v23, Landroid/widget/ActivityChooserModel$HistoryLoader$2;

    invoke-direct/range {v23 .. v24}, Landroid/widget/ActivityChooserModel$HistoryLoader$2;-><init>(Landroid/widget/ActivityChooserModel$HistoryLoader;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1357
    monitor-exit v22
    :try_end_1f1
    .catchall {:try_start_1c3 .. :try_end_1f1} :catchall_1fe

    .line 1363
    if-eqz v4, :cond_1f6

    .line 1365
    :try_start_1f3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_1f6} :catch_20b

    .line 1371
    :cond_1f6
    :goto_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$HistoryLoader;->this$0:Landroid/widget/ActivityChooserModel;

    move-object/from16 v21, v0

    goto/16 :goto_b4

    .line 1357
    .end local v7           #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v8           #historicalRecordsCount:I
    .end local v9           #i:I
    .end local v18           #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_1fe
    move-exception v21

    :try_start_1ff
    monitor-exit v22
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_1fe

    :try_start_200
    throw v21
    :try_end_201
    .catchall {:try_start_200 .. :try_end_201} :catchall_195
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_200 .. :try_end_201} :catch_7e
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_201} :catch_124

    .line 1366
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v14           #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v17           #type:I
    :catch_201
    move-exception v22

    goto :goto_19b

    .restart local v20       #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_203
    move-exception v21

    goto/16 :goto_ae

    .end local v20           #xppe:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10       #ioe:Ljava/io/IOException;
    :catch_206
    move-exception v21

    goto/16 :goto_152

    .end local v10           #ioe:Ljava/io/IOException;
    .restart local v7       #historicalRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v8       #historicalRecordsCount:I
    .restart local v9       #i:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14       #readRecords:Ljava/util/List;,"Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v17       #type:I
    .restart local v18       #uniqueShareRecords:Ljava/util/Set;,"Ljava/util/Set<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_209
    move-exception v21

    goto :goto_1bb

    :catch_20b
    move-exception v21

    goto :goto_1f6
.end method
