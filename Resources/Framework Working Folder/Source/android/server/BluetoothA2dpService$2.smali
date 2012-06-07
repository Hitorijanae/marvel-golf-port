.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 32
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, action:Ljava/lang/String;
    const-string v25, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    .line 130
    .local v11, device:Landroid/bluetooth/BluetoothDevice;
    const-string v25, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_40

    .line 131
    const-string v25, "android.bluetooth.adapter.extra.STATE"

    const/high16 v26, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 133
    .local v23, state:I
    packed-switch v23, :pswitch_data_6be

    .line 290
    .end local v23           #state:I
    :cond_2b
    :goto_2b
    return-void

    .line 135
    .restart local v23       #state:I
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$300(Landroid/server/BluetoothA2dpService;)V

    goto :goto_2b

    .line 138
    :pswitch_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #calls: Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$400(Landroid/server/BluetoothA2dpService;)V

    goto :goto_2b

    .line 141
    .end local v23           #state:I
    :cond_40
    const-string v25, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9f

    .line 142
    const-string v25, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v26, -0x8000

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 144
    .local v9, bondState:I
    packed-switch v9, :pswitch_data_6c6

    :pswitch_5b
    goto :goto_2b

    .line 160
    :pswitch_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v11, v1}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_2b

    .line 146
    :pswitch_6c
    const/16 v21, 0x0

    .line 147
    .local v21, priority:I
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    .line 148
    .local v5, BtClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v5, :cond_97

    .line 149
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v25

    const/16 v26, 0x100

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_89

    .line 150
    const-string v25, "BluetoothA2dpService"

    const-string v26, "Remote device matches connectable priority"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/16 v21, 0x64

    .line 157
    :cond_89
    :goto_89
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/server/BluetoothA2dpService;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_2b

    .line 155
    :cond_97
    const-string v25, "BluetoothA2dpService"

    const-string v26, "**** Failed to retrieve BtClass in bonded state ****"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 163
    .end local v5           #BtClass:Landroid/bluetooth/BluetoothClass;
    .end local v9           #bondState:I
    .end local v21           #priority:I
    :cond_9f
    const-string v25, "android.bluetooth.device.action.ACL_DISCONNECTED"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f5

    .line 164
    monitor-enter p0

    .line 165
    if-nez v11, :cond_b9

    .line 166
    :try_start_ac
    const-string v25, "BluetoothA2dpService"

    const-string v26, "Error! device is null"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    monitor-exit p0

    goto/16 :goto_2b

    .line 173
    :catchall_b6
    move-exception v25

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_ac .. :try_end_b8} :catchall_b6

    throw v25

    .line 169
    :cond_b9
    :try_start_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f2

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 171
    .restart local v23       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v26

    #calls: Landroid/server/BluetoothA2dpService;->handleSinkStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    invoke-static {v0, v11, v1, v2}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 173
    .end local v23           #state:I
    :cond_f2
    monitor-exit p0
    :try_end_f3
    .catchall {:try_start_b9 .. :try_end_f3} :catchall_b6

    goto/16 :goto_2b

    .line 174
    :cond_f5
    const-string v25, "android.media.VOLUME_CHANGED_ACTION"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a7

    .line 175
    const-string v25, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/16 v26, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 176
    .local v24, streamType:I
    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2b

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v22

    .line 179
    .local v22, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v25

    if-eqz v25, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v26, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    #calls: Landroid/server/BluetoothA2dpService;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$700(Landroid/server/BluetoothA2dpService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 180
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v25 .. v25}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, address:Ljava/lang/String;
    const-string v25, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 183
    .local v17, newVolLevel:I
    const-string v25, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 185
    .local v18, oldVolLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$800(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 186
    .local v19, path:Ljava/lang/String;
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_192

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeUpNative(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_2b

    .line 188
    :cond_192
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2b

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->avrcpVolumeDownNative(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1000(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Z

    goto/16 :goto_2b

    .line 193
    .end local v7           #address:Ljava/lang/String;
    .end local v17           #newVolLevel:I
    .end local v18           #oldVolLevel:I
    .end local v19           #path:Ljava/lang/String;
    .end local v22           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v24           #streamType:I
    :cond_1a7
    const-string v25, "com.android.music.metachanged"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3b9

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string/jumbo v26, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_202

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    :cond_202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_219

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    :cond_219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_230

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    :cond_230
    const-string/jumbo v25, "id"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 204
    .local v12, extra:J
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_247

    .line 205
    const-wide/16 v12, 0x0

    .line 206
    :cond_247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    const-string v25, "ListSize"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 208
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_26a

    .line 209
    const-wide/16 v12, 0x0

    .line 210
    :cond_26a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    const-string v25, "duration"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 212
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_28d

    .line 213
    const-wide/16 v12, 0x0

    .line 214
    :cond_28d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    const-string/jumbo v25, "position"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 216
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_2b1

    .line 217
    const-wide/16 v12, 0x0

    .line 218
    :cond_2b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v0, v12, v13}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 220
    const-string v25, "BluetoothA2dpService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Meta data info is trackname: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " artist: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v25, "BluetoothA2dpService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mMediaNumber: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " mediaCount "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v25, "BluetoothA2dpService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mPostion "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " album: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "duration "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v8

    .local v8, arr$:[Ljava/lang/String;
    array-length v15, v8

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_380
    if-ge v14, v15, :cond_2b

    aget-object v19, v8, v14

    .line 225
    .restart local v19       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move/from16 v2, v26

    move-wide/from16 v3, v27

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 224
    add-int/lit8 v14, v14, 0x1

    goto :goto_380

    .line 228
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v12           #extra:J
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v19           #path:Ljava/lang/String;
    :cond_3b9
    const-string v25, "com.android.music.playstatechanged"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_608

    .line 229
    const-string/jumbo v25, "track"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, currentTrackName:Ljava/lang/String;
    if-eqz v10, :cond_504

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_504

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static {v0, v10}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$1100(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_42a

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mTrackName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1102(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    :cond_42a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$1200(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_441

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mArtistName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1202(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    :cond_441
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$1300(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_458

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string v26, "Unknown"

    #setter for: Landroid/server/BluetoothA2dpService;->mAlbumName:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1302(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    :cond_458
    const-string/jumbo v25, "id"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 241
    .restart local v12       #extra:J
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_46f

    .line 242
    const-wide/16 v12, 0x0

    .line 243
    :cond_46f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaNumber:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    const-string v25, "ListSize"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 245
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_492

    .line 246
    const-wide/16 v12, 0x0

    .line 247
    :cond_492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mMediaCount:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1502(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    const-string v25, "duration"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 249
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_4b5

    .line 250
    const-wide/16 v12, 0x0

    .line 251
    :cond_4b5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    const-string/jumbo v25, "position"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 253
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_4d9

    .line 254
    const-wide/16 v12, 0x0

    .line 255
    :cond_4d9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static {v0, v12, v13}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #arr$:[Ljava/lang/String;
    array-length v15, v8

    .restart local v15       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_4f0
    if-ge v14, v15, :cond_504

    aget-object v19, v8, v14

    .line 257
    .restart local v19       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    #calls: Landroid/server/BluetoothA2dpService;->sendMetaData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/server/BluetoothA2dpService;->access$1800(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    .line 256
    add-int/lit8 v14, v14, 0x1

    goto :goto_4f0

    .line 259
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v12           #extra:J
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v19           #path:Ljava/lang/String;
    :cond_504
    const/16 v20, 0x0

    .line 260
    .local v20, playStatus:Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 261
    .local v16, meta:Landroid/os/Bundle;
    const-string/jumbo v25, "playing"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5d5

    .line 262
    const-string/jumbo v25, "playing"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 268
    :goto_528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string/jumbo v26, "position"

    const-wide/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v26

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v25 .. v27}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-gez v25, :cond_55b

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v25 .. v27}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 271
    :cond_55b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v27

    move-object/from16 v0, v26

    move/from16 v1, v20

    move-wide/from16 v2, v27

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v26

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;I)I

    .line 272
    const-string v25, "BluetoothA2dpService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "PlayState changed "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->getConnectedSinksPaths()[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #arr$:[Ljava/lang/String;
    array-length v15, v8

    .restart local v15       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_5ac
    if-ge v14, v15, :cond_2b

    aget-object v19, v8, v14

    .line 274
    .restart local v19       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$2100(Landroid/server/BluetoothA2dpService;)I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move/from16 v2, v26

    move-wide/from16 v3, v27

    #calls: Landroid/server/BluetoothA2dpService;->sendEvent(Ljava/lang/String;IJ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/server/BluetoothA2dpService;->access$1900(Landroid/server/BluetoothA2dpService;Ljava/lang/String;IJ)V

    .line 273
    add-int/lit8 v14, v14, 0x1

    goto :goto_5ac

    .line 263
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v19           #path:Ljava/lang/String;
    :cond_5d5
    const-string/jumbo v25, "playstate"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5f5

    .line 264
    const-string/jumbo v25, "playstate"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    goto/16 :goto_528

    .line 266
    :cond_5f5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayingA2dpDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$2000(Landroid/server/BluetoothA2dpService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v25

    if-eqz v25, :cond_605

    const/16 v20, 0x1

    :goto_603
    goto/16 :goto_528

    :cond_605
    const/16 v20, 0x0

    goto :goto_603

    .line 276
    .end local v10           #currentTrackName:Ljava/lang/String;
    .end local v16           #meta:Landroid/os/Bundle;
    .end local v20           #playStatus:Z
    :cond_608
    const-string v25, "com.android.music.playstatusresponse"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2b

    .line 277
    const-string v25, "BluetoothA2dpService"

    const-string v26, "Received PLAYSTATUS_RESPONSE"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v25, "duration"

    const-wide/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 279
    .restart local v12       #extra:J
    const-wide/16 v25, 0x0

    cmp-long v25, v12, v25

    if-gez v25, :cond_62f

    .line 280
    const-wide/16 v12, 0x0

    .line 281
    :cond_62f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    #setter for: Landroid/server/BluetoothA2dpService;->mDuration:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$1602(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-string/jumbo v26, "position"

    const-wide/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v26

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v25 .. v27}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v25 .. v25}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-gez v25, :cond_66f

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    #setter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v25 .. v27}, Landroid/server/BluetoothA2dpService;->access$1702(Landroid/server/BluetoothA2dpService;J)J

    .line 285
    :cond_66f
    const-string/jumbo v25, "playing"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 286
    .restart local v20       #playStatus:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v27, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPosition:J
    invoke-static/range {v27 .. v27}, Landroid/server/BluetoothA2dpService;->access$1700(Landroid/server/BluetoothA2dpService;)J

    move-result-wide v27

    move-object/from16 v0, v26

    move/from16 v1, v20

    move-wide/from16 v2, v27

    #calls: Landroid/server/BluetoothA2dpService;->convertedPlayStatus(ZJ)I
    invoke-static {v0, v1, v2, v3}, Landroid/server/BluetoothA2dpService;->access$2200(Landroid/server/BluetoothA2dpService;ZJ)I

    move-result v26

    #setter for: Landroid/server/BluetoothA2dpService;->mPlayStatus:I
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$2102(Landroid/server/BluetoothA2dpService;I)I

    .line 287
    const-string v25, "BluetoothA2dpService"

    const-string v26, "Sending Playstatus"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    move-object/from16 v26, v0

    #getter for: Landroid/server/BluetoothA2dpService;->mPlayStatusRequestPath:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/server/BluetoothA2dpService;->access$000(Landroid/server/BluetoothA2dpService;)Ljava/lang/String;

    move-result-object v26

    #calls: Landroid/server/BluetoothA2dpService;->sendPlayStatus(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Landroid/server/BluetoothA2dpService;->access$100(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 133
    nop

    :pswitch_data_6be
    .packed-switch 0xc
        :pswitch_2c
        :pswitch_36
    .end packed-switch

    .line 144
    :pswitch_data_6c6
    .packed-switch 0xa
        :pswitch_5c
        :pswitch_5b
        :pswitch_6c
    .end packed-switch
.end method
