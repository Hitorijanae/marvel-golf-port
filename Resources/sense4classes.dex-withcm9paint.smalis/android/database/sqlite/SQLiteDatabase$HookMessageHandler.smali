.class Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;
.super Landroid/os/Handler;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HookMessageHandler"
.end annotation


# instance fields
.field private msgNum:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .parameter "looper"

    .prologue
    .line 2954
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2951
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    .line 2955
    return-void
.end method

.method private enqueueMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/16 v6, 0x12

    .line 2980
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 2981
    :try_start_7
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2982
    .local v2, set:Ljava/util/HashMap;
    if-nez v2, :cond_23

    .line 2983
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #set:Ljava/util/HashMap;
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2984
    .restart local v2       #set:Ljava/util/HashMap;
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    :cond_23
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2987
    .local v1, oldOpObj:Ljava/lang/Object;
    if-eqz v1, :cond_6a

    .line 2997
    check-cast v1, Ljava/lang/Integer;

    .end local v1           #oldOpObj:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2998
    .local v0, oldOpCode:I
    iget v3, p1, Landroid/os/Message;->arg1:I

    sparse-switch v3, :sswitch_data_76

    .line 3017
    monitor-exit v4

    .line 3030
    .end local v0           #oldOpCode:I
    :goto_3b
    return-void

    .line 3000
    .restart local v0       #oldOpCode:I
    :sswitch_3c
    if-eq v0, v6, :cond_42

    .line 3001
    const/16 v3, 0x17

    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 3028
    .end local v0           #oldOpCode:I
    :cond_42
    :goto_42
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3029
    monitor-exit v4

    goto :goto_3b

    .end local v2           #set:Ljava/util/HashMap;
    :catchall_53
    move-exception v3

    monitor-exit v4
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_53

    throw v3

    .line 3005
    .restart local v0       #oldOpCode:I
    .restart local v2       #set:Ljava/util/HashMap;
    :sswitch_56
    if-ne v0, v6, :cond_42

    .line 3006
    const/16 v3, 0x12

    :try_start_5a
    iput v3, p1, Landroid/os/Message;->arg1:I

    goto :goto_42

    .line 3010
    :sswitch_5d
    if-ne v0, v6, :cond_42

    .line 3011
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3012
    monitor-exit v4

    goto :goto_3b

    .line 3019
    .end local v0           #oldOpCode:I
    .restart local v1       #oldOpObj:Ljava/lang/Object;
    :cond_6a
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$200()I

    move-result v5

    if-lt v3, v5, :cond_42

    .line 3026
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_5a .. :try_end_75} :catchall_53

    goto :goto_3b

    .line 2998
    :sswitch_data_76
    .sparse-switch
        0x9 -> :sswitch_5d
        0x12 -> :sswitch_3c
        0x17 -> :sswitch_56
    .end sparse-switch
.end method

.method private static sendIntent()V
    .registers 24

    .prologue
    .line 3040
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v23

    monitor-enter v23

    .line 3041
    :try_start_5
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 3042
    .local v14, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1d

    .line 3043
    const-string v3, "SQLiteDatabase"

    const-string/jumbo v5, "no any recorded row id found in sqlite change event"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    monitor-exit v23

    .line 3080
    :goto_1c
    return-void

    .line 3047
    :cond_1d
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_21
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 3051
    .local v15, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 3052
    .local v20, idStr:Ljava/lang/StringBuilder;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 3053
    .local v22, tableName:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x24

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3055
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/HashMap;

    .line 3056
    .local v21, ids:Ljava/util/HashMap;
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 3057
    .local v19, idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 3058
    .local v18, id:Ljava/util/Map$Entry;
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 3078
    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #id:Ljava/util/Map$Entry;
    .end local v19           #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    .end local v20           #idStr:Ljava/lang/StringBuilder;
    .end local v21           #ids:Ljava/util/HashMap;
    .end local v22           #tableName:Ljava/lang/String;
    :catchall_7d
    move-exception v3

    monitor-exit v23
    :try_end_7f
    .catchall {:try_start_5 .. :try_end_7f} :catchall_7d

    throw v3

    .line 3061
    .restart local v15       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v19       #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    .restart local v20       #idStr:Ljava/lang/StringBuilder;
    .restart local v21       #ids:Ljava/util/HashMap;
    .restart local v22       #tableName:Ljava/lang/String;
    :cond_80
    :try_start_80
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3062
    const/16 v3, 0x24

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x17

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3065
    new-instance v4, Landroid/content/Intent;

    const-string v3, "com.kii.SQLITE_CHANGE"

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3066
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3067
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_b5
    .catchall {:try_start_80 .. :try_end_b5} :catchall_7d

    .line 3069
    :try_start_b5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 3070
    .local v2, iActivityManager:Landroid/app/IActivityManager;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_c5
    .catchall {:try_start_b5 .. :try_end_c5} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c5} :catch_c7

    goto/16 :goto_21

    .line 3072
    .end local v2           #iActivityManager:Landroid/app/IActivityManager;
    :catch_c7
    move-exception v13

    .line 3073
    .local v13, e:Ljava/lang/Exception;
    :try_start_c8
    const-string v3, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot send intent for sqlite change:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 3077
    .end local v4           #intent:Landroid/content/Intent;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v15           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/util/HashMap;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #idSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry;>;"
    .end local v20           #idStr:Ljava/lang/StringBuilder;
    .end local v21           #ids:Ljava/util/HashMap;
    .end local v22           #tableName:Ljava/lang/String;
    :cond_e4
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$100()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 3078
    monitor-exit v23
    :try_end_ec
    .catchall {:try_start_c8 .. :try_end_ec} :catchall_7d

    goto/16 :goto_1c
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v1, -0x1

    .line 2958
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1a

    .line 2959
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2960
    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2962
    :cond_10
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    .line 2963
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->enqueueMessage(Landroid/os/Message;)V

    .line 2974
    :goto_19
    return-void

    .line 2965
    :cond_1a
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    if-nez v0, :cond_22

    .line 2967
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendIntent()V

    goto :goto_19

    .line 2970
    :cond_22
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->msgNum:I

    .line 2971
    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase$HookMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_19
.end method

.method public sendIntent(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    .line 3087
    new-instance v2, Landroid/content/Intent;

    const-string v1, "com.kii.SQLITE_CHANGE"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3089
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3090
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->access$400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3092
    :try_start_40
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 3093
    .local v0, iActivityManager:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZ)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_50} :catch_51

    .line 3097
    .end local v0           #iActivityManager:Landroid/app/IActivityManager;
    :goto_50
    return-void

    .line 3094
    :catch_51
    move-exception v11

    .line 3095
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "SQLiteDatabase"

    const-string v3, "Cannot send sqlite update notificaiton Intent successfully"

    invoke-static {v1, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50
.end method
