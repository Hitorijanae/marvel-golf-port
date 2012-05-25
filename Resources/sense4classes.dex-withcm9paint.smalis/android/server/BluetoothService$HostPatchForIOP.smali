.class Landroid/server/BluetoothService$HostPatchForIOP;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HostPatchForIOP"
.end annotation


# static fields
.field private static final HOST_PATCH_IOP_BLACKLIST:Ljava/lang/String; = "/etc/bluetooth/iop_device_list.conf"


# instance fields
.field private mAvoidAutoConnectBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAvoidConnectOnPairBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDontRemoveServiceBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 12

    .prologue
    .line 300
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const-string v8, "BluetoothService"

    const-string v9, " HostPatchForIOT: Loading from conf"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v2, 0x0

    .line 305
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/etc/bluetooth/iop_device_list.conf"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_ee
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_12} :catch_f2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_f0

    .line 306
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_12
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 309
    .local v1, file:Ljava/io/BufferedReader;
    :cond_21
    :goto_21
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_e3

    .line 310
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_21

    const-string v8, "//"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_21

    .line 312
    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 313
    .local v7, value:[Ljava/lang/String;
    if-eqz v7, :cond_21

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_21

    .line 314
    const/4 v8, 0x1

    aget-object v8, v7, v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, val:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string/jumbo v9, "sdp_missing_uuids"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 316
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$HostPatchForIOP;->mDontRemoveServiceBlackList:Ljava/util/ArrayList;

    .line 318
    const-string v8, "BluetoothService"

    const-string v9, " HostPatchForIOT: Loaded DontRemoveService"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_12 .. :try_end_6c} :catchall_db
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_6c} :catch_6d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_6c} :catch_9a

    goto :goto_21

    .line 330
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catch_6d
    move-exception v0

    move-object v2, v3

    .line 331
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_6f
    :try_start_6f
    const-string v8, "BluetoothService"

    const-string v9, "HOST Patch conf File Not found : /etc/bluetooth/iop_device_list.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_ee

    .line 335
    if-eqz v2, :cond_7b

    .line 337
    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_ba

    .line 343
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_7b
    :goto_7b
    return-void

    .line 319
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_7c
    const/4 v8, 0x0

    :try_start_7d
    aget-object v8, v7, v8

    const-string v9, "avoid_connect_after_pair"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 320
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$HostPatchForIOP;->mAvoidConnectOnPairBlackList:Ljava/util/ArrayList;

    .line 322
    const-string v8, "BluetoothService"

    const-string v9, " HostPatchForIOT: Loaded NoConnectionOnPair"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_7d .. :try_end_99} :catchall_db
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_99} :catch_6d
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_99} :catch_9a

    goto :goto_21

    .line 332
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catch_9a
    move-exception v0

    move-object v2, v3

    .line 333
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_9c
    :try_start_9c
    const-string v8, "BluetoothService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException: read HOST Patch conf File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_9c .. :try_end_b4} :catchall_ee

    .line 335
    if-eqz v2, :cond_7b

    .line 337
    :try_start_b6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_7b

    .line 338
    .end local v0           #e:Ljava/io/IOException;
    :catch_ba
    move-exception v8

    goto :goto_7b

    .line 323
    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #val:[Ljava/lang/String;
    .restart local v7       #value:[Ljava/lang/String;
    :cond_bc
    const/4 v8, 0x0

    :try_start_bd
    aget-object v8, v7, v8

    const-string v9, "avoid_autoconnect"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 324
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$HostPatchForIOP;->mAvoidAutoConnectBlackList:Ljava/util/ArrayList;

    .line 326
    const-string v8, "BluetoothService"

    const-string v9, " HostPatchForIOT: Loaded NoAutoConnectList"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catchall {:try_start_bd .. :try_end_d9} :catchall_db
    .catch Ljava/io/FileNotFoundException; {:try_start_bd .. :try_end_d9} :catch_6d
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_d9} :catch_9a

    goto/16 :goto_21

    .line 335
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #val:[Ljava/lang/String;
    .end local v7           #value:[Ljava/lang/String;
    :catchall_db
    move-exception v8

    move-object v2, v3

    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :goto_dd
    if-eqz v2, :cond_e2

    .line 337
    :try_start_df
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_ea

    .line 335
    :cond_e2
    :goto_e2
    throw v8

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :cond_e3
    if-eqz v3, :cond_e8

    .line 337
    :try_start_e5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_ec

    :cond_e8
    :goto_e8
    move-object v2, v3

    .line 342
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    goto :goto_7b

    .line 338
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    :catch_ea
    move-exception v9

    goto :goto_e2

    .end local v2           #fstream:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/BufferedReader;
    .restart local v3       #fstream:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #line:Ljava/lang/String;
    :catch_ec
    move-exception v8

    goto :goto_e8

    .line 335
    .end local v1           #file:Ljava/io/BufferedReader;
    .end local v3           #fstream:Ljava/io/FileInputStream;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #line:Ljava/lang/String;
    .restart local v2       #fstream:Ljava/io/FileInputStream;
    :catchall_ee
    move-exception v8

    goto :goto_dd

    .line 332
    :catch_f0
    move-exception v0

    goto :goto_9c

    .line 330
    :catch_f2
    move-exception v0

    goto/16 :goto_6f
.end method


# virtual methods
.method public isHostPatchRequired(Ljava/lang/String;I)Z
    .registers 8
    .parameter "address"
    .parameter "patch_id"

    .prologue
    const/4 v2, 0x1

    .line 348
    const-string v3, "BluetoothService"

    const-string v4, " HostPatchForIOT: Checking"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    packed-switch p2, :pswitch_data_7a

    .line 381
    :cond_b
    const/4 v2, 0x0

    :goto_c
    return v2

    .line 351
    :pswitch_d
    iget-object v3, p0, Landroid/server/BluetoothService$HostPatchForIOP;->mDontRemoveServiceBlackList:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 352
    iget-object v3, p0, Landroid/server/BluetoothService$HostPatchForIOP;->mDontRemoveServiceBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 353
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 354
    const-string v3, "BluetoothService"

    const-string v4, " HostPatchForIOT: Apply DontRemoveService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 361
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_31
    iget-object v3, p0, Landroid/server/BluetoothService$HostPatchForIOP;->mAvoidConnectOnPairBlackList:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 362
    iget-object v3, p0, Landroid/server/BluetoothService$HostPatchForIOP;->mAvoidConnectOnPairBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
    .restart local v0       #blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 364
    const-string v3, "BluetoothService"

    const-string v4, " HostPatchForIOT: Apply DontGoforConnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 371
    .end local v0           #blacklistAddress:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :pswitch_55
    iget-object v3, p0, Landroid/server/BluetoothService$HostPatchForIOP;->mAvoidAutoConnectBlackList:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 372
    iget-object v3, p0, Landroid/server/BluetoothService$HostPatchForIOP;->mAvoidAutoConnectBlackList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_5f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    .restart local v0       #blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 374
    const-string v3, "BluetoothService"

    const-string v4, " HostPatchForIOT: Apply DontAutoConnect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 349
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_31
        :pswitch_55
    .end packed-switch
.end method
