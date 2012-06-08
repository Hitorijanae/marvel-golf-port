.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;,
        Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 35
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    :goto_9
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 170
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 177
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 35
    .end local v0           #i:I
    :cond_2b
    const/4 v1, 0x0

    goto :goto_9

    .line 179
    .restart local v0       #i:I
    :cond_2d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .registers 6
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 145
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 150
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 155
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 165
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 188
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 190
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 191
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 193
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 194
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 195
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 6
    .parameter "address"

    .prologue
    .line 549
    const/4 v2, 0x0

    .line 552
    .local v2, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, addressType:I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 554
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1b

    .line 556
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_19
    :goto_19
    move-object v3, v2

    .line 568
    .end local v0           #addressType:I
    :goto_1a
    return-object v3

    .line 557
    .restart local v0       #addressType:I
    :cond_1b
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2b

    .line 559
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_19

    .line 564
    .end local v0           #addressType:I
    :catch_28
    move-exception v1

    .line 565
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1a

    .line 560
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v0       #addressType:I
    :cond_2b
    const/4 v3, 0x4

    if-ne v3, v0, :cond_19

    .line 562
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_37} :catch_28

    goto :goto_19
.end method

.method private appendHeader(I)I
    .registers 24
    .parameter "field"

    .prologue
    .line 575
    packed-switch p1, :pswitch_data_258

    .line 736
    :pswitch_3
    const/16 v20, 0x3

    .line 739
    :goto_5
    return v20

    .line 577
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    .line 580
    .local v19, version:I
    if-nez v19, :cond_25

    .line 581
    const/16 v20, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 739
    .end local v19           #version:I
    :cond_22
    :goto_22
    const/16 v20, 0x0

    goto :goto_5

    .line 583
    .restart local v19       #version:I
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_22

    .line 590
    .end local v19           #version:I
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 591
    .local v18, textString:[B
    if-nez v18, :cond_40

    .line 592
    const/16 v20, 0x2

    goto :goto_5

    .line 595
    :cond_40
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 596
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_22

    .line 602
    .end local v18           #textString:[B
    :pswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 604
    .local v3, addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_5e

    .line 605
    const/16 v20, 0x2

    goto :goto_5

    .line 609
    :cond_5e
    const/4 v14, 0x0

    .local v14, i:I
    :goto_5f
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_22

    .line 610
    aget-object v20, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 611
    .local v17, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_75

    .line 612
    const/16 v20, 0x1

    goto :goto_5

    .line 615
    :cond_75
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 616
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 609
    add-int/lit8 v14, v14, 0x1

    goto :goto_5f

    .line 622
    .end local v3           #addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v14           #i:I
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_82
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v12

    .line 625
    .local v12, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v12, :cond_b1

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b1

    new-instance v20, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v21, "insert-address-token"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c5

    .line 630
    :cond_b1
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 632
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_22

    .line 634
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v13

    .line 638
    .local v13, fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 640
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v17

    .line 641
    .restart local v17       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v17, :cond_ed

    .line 642
    const/16 v20, 0x1

    goto/16 :goto_5

    .line 645
    :cond_ed
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 647
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v11

    .line 648
    .local v11, flen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 649
    int-to-long v0, v11

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 660
    .end local v11           #flen:I
    .end local v12           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v17           #temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v16

    .line 661
    .local v16, octet:I
    if-nez v16, :cond_12a

    .line 662
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 665
    :cond_12a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 666
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 670
    .end local v16           #octet:I
    :pswitch_136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 671
    .local v4, date:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v4

    if-nez v20, :cond_14e

    .line 672
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 675
    :cond_14e
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 676
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_22

    .line 680
    .end local v4           #date:J
    :pswitch_158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 682
    .local v6, enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_16c

    .line 683
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 686
    :cond_16c
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 687
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_22

    .line 691
    .end local v6           #enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v15

    .line 692
    .local v15, messageClass:[B
    if-nez v15, :cond_18a

    .line 693
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 696
    :cond_18a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 697
    const-string v20, "advertisement"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1a6

    .line 699
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 700
    :cond_1a6
    const-string v20, "auto"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1bf

    .line 702
    const/16 v20, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 703
    :cond_1bf
    const-string/jumbo v20, "personal"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1d9

    .line 705
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 706
    :cond_1d9
    const-string/jumbo v20, "informational"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_1f3

    .line 708
    const/16 v20, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 710
    :cond_1f3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_22

    .line 716
    .end local v15           #messageClass:[B
    :pswitch_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 717
    .local v7, expiry:J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v7

    if-nez v20, :cond_212

    .line 718
    const/16 v20, 0x2

    goto/16 :goto_5

    .line 721
    :cond_212
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v10

    .line 726
    .local v10, expiryStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 727
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 729
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v9

    .line 730
    .local v9, expiryLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 731
    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 575
    :pswitch_data_258
    .packed-switch 0x81
        :pswitch_4b
        :pswitch_4b
        :pswitch_3
        :pswitch_3
        :pswitch_136
        :pswitch_116
        :pswitch_1fa
        :pswitch_1fa
        :pswitch_82
        :pswitch_176
        :pswitch_2d
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_116
        :pswitch_116
        :pswitch_116
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_116
        :pswitch_158
        :pswitch_4b
        :pswitch_2d
        :pswitch_3
        :pswitch_3
        :pswitch_116
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .registers 3
    .parameter "address"

    .prologue
    const/4 v0, 0x5

    .line 1466
    if-nez p0, :cond_4

    .line 1484
    :cond_3
    :goto_3
    return v0

    .line 1470
    :cond_4
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1472
    const/4 v0, 0x3

    goto :goto_3

    .line 1473
    :cond_e
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1475
    const/4 v0, 0x1

    goto :goto_3

    .line 1476
    :cond_18
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1478
    const/4 v0, 0x2

    goto :goto_3

    .line 1479
    :cond_22
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1481
    const/4 v0, 0x4

    goto :goto_3
.end method

.method private makeAckInd()I
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 843
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_e

    .line 845
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 846
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 850
    :cond_e
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 851
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 854
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_21

    .line 866
    :cond_20
    :goto_20
    return v0

    .line 859
    :cond_21
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_20

    .line 864
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 866
    goto :goto_20
.end method

.method private makeDeliveryInd()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 874
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v0, :cond_d

    .line 875
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 876
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 880
    :cond_d
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 881
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 884
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 887
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 890
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 893
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 896
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 898
    return v1
.end method

.method private makeMessageBody(I)I
    .registers 39
    .parameter "PduType"

    .prologue
    .line 1050
    const/16 v33, 0x0

    .line 1051
    .local v33, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const/16 v32, 0x0

    .line 1054
    .local v32, retrieve:Lcom/google/android/mms/pdu/RetrieveConf;
    const/16 v35, 0x80

    move/from16 v0, p1

    move/from16 v1, v35

    if-ne v0, v1, :cond_49

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v33, v0

    .end local v33           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    check-cast v33, Lcom/google/android/mms/pdu/SendReq;

    .line 1060
    .restart local v33       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v20

    .line 1065
    .local v20, ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v35, v0

    const/16 v36, 0x84

    invoke-virtual/range {v35 .. v36}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1066
    .local v10, contentType:Ljava/lang/String;
    sget-object v35, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1067
    .local v12, contentTypeIdentifier:Ljava/lang/Integer;
    if-nez v12, :cond_52

    .line 1069
    const/16 v35, 0x1

    .line 1323
    :cond_48
    :goto_48
    return v35

    .line 1057
    .end local v10           #contentType:Ljava/lang/String;
    .end local v12           #contentTypeIdentifier:Ljava/lang/Integer;
    .end local v20           #ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v32, v0

    .end local v32           #retrieve:Lcom/google/android/mms/pdu/RetrieveConf;
    check-cast v32, Lcom/google/android/mms/pdu/RetrieveConf;

    .restart local v32       #retrieve:Lcom/google/android/mms/pdu/RetrieveConf;
    goto :goto_14

    .line 1072
    .restart local v10       #contentType:Ljava/lang/String;
    .restart local v12       #contentTypeIdentifier:Ljava/lang/Integer;
    .restart local v20       #ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    :cond_52
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1074
    const/4 v5, 0x0

    .line 1076
    .local v5, body:Lcom/google/android/mms/pdu/PduBody;
    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x78

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_7c

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x59

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_7c

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v36, 0x1b

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_13c

    .line 1079
    :cond_7c
    const-string v35, "PduParser"

    const-string v36, "Aplix - PduComposer.makeMessageBody()"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v15

    .line 1087
    .local v15, ctExtension:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    if-eqz v33, :cond_e2

    .line 1088
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeApplicationId()[B

    move-result-object v16

    .line 1089
    .local v16, ctExtensionArray:[B
    if-eqz v16, :cond_bd

    .line 1090
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1091
    .local v18, ctExtensionString:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_bd

    .line 1092
    const-string v35, "Application-ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 1093
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 1097
    .end local v18           #ctExtensionString:Ljava/lang/String;
    :cond_bd
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/SendReq;->getContentTypeReplyToApplicationId()[B

    move-result-object v16

    .line 1098
    if-eqz v16, :cond_e2

    .line 1099
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1100
    .restart local v18       #ctExtensionString:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v35

    if-lez v35, :cond_e2

    .line 1101
    const-string v35, "Reply-To-Application-ID"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 1102
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 1108
    .end local v16           #ctExtensionArray:[B
    .end local v18           #ctExtensionString:Ljava/lang/String;
    :cond_e2
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v17

    .line 1110
    .local v17, ctExtensionLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1114
    if-eqz v33, :cond_137

    .line 1115
    invoke-virtual/range {v33 .. v33}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 1118
    :goto_f5
    if-eqz v5, :cond_fd

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v35

    if-nez v35, :cond_17e

    .line 1120
    :cond_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1121
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1122
    .local v19, ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1123
    if-lez v17, :cond_121

    .line 1124
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1126
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1129
    const-wide/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1131
    const/16 v35, 0x0

    goto/16 :goto_48

    .line 1117
    .end local v19           #ctLength:I
    :cond_137
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    goto :goto_f5

    .line 1137
    .end local v15           #ctExtension:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v17           #ctExtensionLength:I
    :cond_13c
    if-eqz v33, :cond_171

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v35, v0

    check-cast v35, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 1141
    :goto_14a
    if-eqz v5, :cond_152

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v35

    if-nez v35, :cond_17e

    .line 1143
    :cond_152
    const-wide/16 v35, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1146
    const/16 v35, 0x0

    goto/16 :goto_48

    .line 1140
    :cond_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object/from16 v35, v0

    check-cast v35, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    goto :goto_14a

    .line 1152
    :cond_17e
    const/16 v35, 0x0

    :try_start_180
    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v27

    .line 1154
    .local v27, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v34

    .line 1155
    .local v34, start:[B
    if-eqz v34, :cond_1b9

    .line 1156
    const/16 v35, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1157
    const/16 v35, 0x3c

    const/16 v36, 0x0

    aget-byte v36, v34, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_272

    const/16 v35, 0x3e

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    aget-byte v36, v34, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_272

    .line 1158
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1166
    :cond_1b9
    :goto_1b9
    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x18

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_2a3

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v35, :cond_2a3

    .line 1168
    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1169
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_1db
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_180 .. :try_end_1db} :catch_29d

    .line 1181
    .end local v27           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v34           #start:[B
    :cond_1db
    :goto_1db
    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x78

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1f9

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v36, 0x59

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1f9

    sget-short v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v36, 0x1b

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_202

    .line 1184
    :cond_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1187
    :cond_202
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1188
    .restart local v19       #ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1189
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1193
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v31

    .line 1194
    .local v31, partNum:I
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1195
    const/16 v24, 0x0

    .local v24, i:I
    :goto_236
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_49f

    .line 1196
    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v27

    .line 1197
    .restart local v27       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 1200
    .local v4, attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 1203
    .local v11, contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v28

    .line 1205
    .local v28, partContentType:[B
    if-nez v28, :cond_2c5

    .line 1207
    const/16 v35, 0x1

    goto/16 :goto_48

    .line 1160
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v19           #ctLength:I
    .end local v24           #i:I
    .end local v28           #partContentType:[B
    .end local v31           #partNum:I
    .restart local v34       #start:[B
    :cond_272
    :try_start_272
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ">"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_29b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_272 .. :try_end_29b} :catch_29d

    goto/16 :goto_1b9

    .line 1177
    .end local v27           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v34           #start:[B
    :catch_29d
    move-exception v22

    .line 1178
    .local v22, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_1db

    .line 1171
    .end local v22           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v27       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v34       #start:[B
    :cond_2a3
    :try_start_2a3
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v35

    const/16 v36, 0x23

    move/from16 v0, v35

    move/from16 v1, v36

    if-eq v0, v1, :cond_1db

    .line 1172
    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1173
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_2c3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2a3 .. :try_end_2c3} :catch_29d

    goto/16 :goto_1db

    .line 1211
    .end local v34           #start:[B
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v11       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v19       #ctLength:I
    .restart local v24       #i:I
    .restart local v28       #partContentType:[B
    .restart local v31       #partNum:I
    :cond_2c5
    sget-object v35, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 1213
    .local v29, partContentTypeIdentifier:Ljava/lang/Integer;
    if-nez v29, :cond_2f5

    .line 1214
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1223
    :goto_2df
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v26

    .line 1225
    .local v26, name:[B
    if-nez v26, :cond_301

    .line 1226
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v26

    .line 1228
    if-nez v26, :cond_301

    .line 1229
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v26

    .line 1231
    if-nez v26, :cond_301

    .line 1235
    const/16 v35, 0x1

    goto/16 :goto_48

    .line 1216
    .end local v26           #name:[B
    :cond_2f5
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_2df

    .line 1239
    .restart local v26       #name:[B
    :cond_301
    const/16 v35, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1240
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1243
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 1244
    .local v7, charset:I
    if-eqz v7, :cond_325

    .line 1245
    const/16 v35, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1246
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 1249
    :cond_325
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1250
    .local v13, contentTypeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1251
    int-to-long v0, v13

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1255
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 1257
    .local v8, contentId:[B
    if-eqz v8, :cond_374

    .line 1258
    const/16 v35, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1259
    const/16 v35, 0x3c

    const/16 v36, 0x0

    aget-byte v36, v8, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3bf

    const/16 v35, 0x3e

    array-length v0, v8

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    aget-byte v36, v8, v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3bf

    .line 1260
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1267
    :cond_374
    :goto_374
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 1268
    .local v9, contentLocation:[B
    if-eqz v9, :cond_388

    .line 1269
    const/16 v35, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1270
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1274
    :cond_388
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v23

    .line 1276
    .local v23, headerLength:I
    const/16 v21, 0x0

    .line 1277
    .local v21, dataLength:I
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v30

    .line 1279
    .local v30, partData:[B
    if-eqz v30, :cond_3e7

    .line 1280
    const/16 v35, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1281
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v21, v0

    .line 1313
    :cond_3ab
    :goto_3ab
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v35

    sub-int v35, v35, v23

    move/from16 v0, v21

    move/from16 v1, v35

    if-eq v0, v1, :cond_471

    .line 1314
    new-instance v35, Ljava/lang/RuntimeException;

    const-string v36, "BUG: Length sanity check failed"

    invoke-direct/range {v35 .. v36}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v35

    .line 1262
    .end local v9           #contentLocation:[B
    .end local v21           #dataLength:I
    .end local v23           #headerLength:I
    .end local v30           #partData:[B
    :cond_3bf
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "<"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    new-instance v36, Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ">"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_374

    .line 1284
    .restart local v9       #contentLocation:[B
    .restart local v21       #dataLength:I
    .restart local v23       #headerLength:I
    .restart local v30       #partData:[B
    :cond_3e7
    const/4 v14, 0x0

    .line 1286
    .local v14, cr:Ljava/io/InputStream;
    const/16 v35, 0x400

    :try_start_3ea
    move/from16 v0, v35

    new-array v6, v0, [B

    .line 1287
    .local v6, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v35, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1288
    const/16 v25, 0x0

    .line 1289
    .local v25, len:I
    :goto_3fe
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v25

    const/16 v35, -0x1

    move/from16 v0, v25

    move/from16 v1, v35

    if-eq v0, v1, :cond_4a8

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v25

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    .line 1292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v35, v0

    add-int v35, v35, v25

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_43f
    .catchall {:try_start_3ea .. :try_end_43f} :catchall_46a
    .catch Ljava/io/FileNotFoundException; {:try_start_3ea .. :try_end_43f} :catch_442
    .catch Ljava/io/IOException; {:try_start_3ea .. :try_end_43f} :catch_452
    .catch Ljava/lang/RuntimeException; {:try_start_3ea .. :try_end_43f} :catch_45e

    .line 1293
    add-int v21, v21, v25

    goto :goto_3fe

    .line 1295
    .end local v6           #buffer:[B
    .end local v25           #len:I
    :catch_442
    move-exception v22

    .line 1296
    .local v22, e:Ljava/io/FileNotFoundException;
    const/16 v35, 0x1

    .line 1303
    if-eqz v14, :cond_48

    .line 1304
    :try_start_447
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_44a
    .catch Ljava/io/IOException; {:try_start_447 .. :try_end_44a} :catch_44c

    goto/16 :goto_48

    .line 1305
    :catch_44c
    move-exception v22

    .line 1307
    .local v22, e:Ljava/io/IOException;
    :goto_44d
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_48

    .line 1297
    .end local v22           #e:Ljava/io/IOException;
    :catch_452
    move-exception v22

    .line 1298
    .restart local v22       #e:Ljava/io/IOException;
    const/16 v35, 0x1

    .line 1303
    if-eqz v14, :cond_48

    .line 1304
    :try_start_457
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_45a
    .catch Ljava/io/IOException; {:try_start_457 .. :try_end_45a} :catch_45c

    goto/16 :goto_48

    .line 1305
    :catch_45c
    move-exception v22

    goto :goto_44d

    .line 1299
    .end local v22           #e:Ljava/io/IOException;
    :catch_45e
    move-exception v22

    .line 1300
    .local v22, e:Ljava/lang/RuntimeException;
    const/16 v35, 0x1

    .line 1303
    if-eqz v14, :cond_48

    .line 1304
    :try_start_463
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_466
    .catch Ljava/io/IOException; {:try_start_463 .. :try_end_466} :catch_468

    goto/16 :goto_48

    .line 1305
    :catch_468
    move-exception v22

    goto :goto_44d

    .line 1302
    .end local v22           #e:Ljava/lang/RuntimeException;
    :catchall_46a
    move-exception v35

    .line 1303
    if-eqz v14, :cond_470

    .line 1304
    :try_start_46d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_470
    .catch Ljava/io/IOException; {:try_start_46d .. :try_end_470} :catch_4a3

    .line 1302
    :cond_470
    :goto_470
    throw v35

    .line 1317
    .end local v14           #cr:Ljava/io/InputStream;
    :cond_471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1318
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1319
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v35, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 1195
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_236

    .line 1323
    .end local v4           #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v7           #charset:I
    .end local v8           #contentId:[B
    .end local v9           #contentLocation:[B
    .end local v11           #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v13           #contentTypeLength:I
    .end local v21           #dataLength:I
    .end local v23           #headerLength:I
    .end local v26           #name:[B
    .end local v27           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v28           #partContentType:[B
    .end local v29           #partContentTypeIdentifier:Ljava/lang/Integer;
    .end local v30           #partData:[B
    :cond_49f
    const/16 v35, 0x0

    goto/16 :goto_48

    .line 1305
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v7       #charset:I
    .restart local v8       #contentId:[B
    .restart local v9       #contentLocation:[B
    .restart local v11       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v13       #contentTypeLength:I
    .restart local v14       #cr:Ljava/io/InputStream;
    .restart local v21       #dataLength:I
    .restart local v23       #headerLength:I
    .restart local v26       #name:[B
    .restart local v27       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v28       #partContentType:[B
    .restart local v29       #partContentTypeIdentifier:Ljava/lang/Integer;
    .restart local v30       #partData:[B
    :catch_4a3
    move-exception v22

    .line 1307
    .local v22, e:Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_470

    .line 1303
    .end local v22           #e:Ljava/io/IOException;
    .restart local v6       #buffer:[B
    .restart local v25       #len:I
    :cond_4a8
    if-eqz v14, :cond_3ab

    .line 1304
    :try_start_4aa
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4ad
    .catch Ljava/io/IOException; {:try_start_4aa .. :try_end_4ad} :catch_4af

    goto/16 :goto_3ab

    .line 1305
    :catch_4af
    move-exception v22

    .line 1307
    .restart local v22       #e:Ljava/io/IOException;
    invoke-virtual/range {v22 .. v22}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3ab
.end method

.method private makeNotifyResp()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 807
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_e

    .line 809
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 810
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 814
    :cond_e
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 815
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 818
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_21

    .line 836
    :cond_20
    :goto_20
    return v0

    .line 823
    :cond_21
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_20

    .line 828
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_20

    .line 834
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 836
    goto :goto_20
.end method

.method private makePdu(I)I
    .registers 12
    .parameter "PduType"

    .prologue
    const/16 v9, 0x92

    const/16 v8, 0x8b

    const/16 v7, 0x83

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 915
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v5, :cond_14

    .line 916
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 917
    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 922
    :cond_14
    const/16 v5, 0x8c

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 923
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 939
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v6, 0x98

    invoke-virtual {v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 940
    .local v2, trid:[B
    if-nez v2, :cond_32

    const/16 v5, 0x80

    if-ne p1, v5, :cond_32

    .line 942
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Transaction-ID is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 945
    :cond_32
    if-eqz v2, :cond_3c

    .line 946
    const/16 v5, 0x98

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 947
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 953
    :cond_3c
    const/16 v5, 0x8d

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-eqz v5, :cond_45

    .line 1043
    :cond_44
    :goto_44
    return v3

    .line 958
    :cond_45
    const/16 v5, 0x85

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 961
    const/16 v5, 0x89

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-nez v5, :cond_44

    .line 965
    const/4 v1, 0x0

    .line 968
    .local v1, recipient:Z
    const/16 v5, 0x97

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-eq v5, v3, :cond_5c

    .line 969
    const/4 v1, 0x1

    .line 973
    :cond_5c
    const/16 v5, 0x82

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-eq v5, v3, :cond_65

    .line 974
    const/4 v1, 0x1

    .line 978
    :cond_65
    const/16 v5, 0x81

    invoke-direct {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v5

    if-eq v5, v3, :cond_6e

    .line 979
    const/4 v1, 0x1

    .line 983
    :cond_6e
    if-eqz v1, :cond_44

    .line 988
    const/16 v3, 0x96

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 992
    const/16 v3, 0x8a

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 995
    const/16 v3, 0x88

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 998
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x78

    if-eq v3, v5, :cond_91

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x59

    if-eq v3, v5, :cond_91

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x1b

    if-ne v3, v5, :cond_9d

    .line 1001
    :cond_91
    const-string v3, "PduParser"

    const-string v5, "Aplix - appendHeader(PduHeaders.DELIVERY_TIME)"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/16 v3, 0x87

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1006
    :cond_9d
    const/16 v3, 0x8f

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1009
    const/16 v3, 0x86

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1014
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-eqz v3, :cond_b2

    .line 1016
    invoke-direct {p0, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1019
    :cond_b2
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-lez v3, :cond_bd

    .line 1021
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1025
    :cond_bd
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1026
    .local v0, contentLocation:[B
    if-eqz v0, :cond_cb

    .line 1027
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1028
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1035
    :cond_cb
    const/16 v3, 0x90

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 1038
    const/16 v3, 0x84

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1041
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move v3, v4

    .line 1043
    goto/16 :goto_44
.end method

.method private makeReadOrigInd()I
    .registers 2

    .prologue
    .line 751
    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadReport(I)I

    move-result v0

    return v0
.end method

.method private makeReadRecInd()I
    .registers 2

    .prologue
    .line 748
    const/16 v0, 0x87

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadReport(I)I

    move-result v0

    return v0
.end method

.method private makeReadReport(I)I
    .registers 5
    .parameter "PduType"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 755
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-nez v2, :cond_e

    .line 757
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduComposer;->createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 758
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 763
    :cond_e
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 764
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 769
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 800
    :cond_1e
    :goto_1e
    return v0

    .line 774
    :cond_1f
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1e

    .line 779
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1e

    .line 784
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1e

    .line 789
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 792
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1e

    move v0, v1

    .line 800
    goto :goto_1e
.end method

.method private makeRetrievePdu()I
    .registers 2

    .prologue
    .line 911
    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makePdu(I)I

    move-result v0

    return v0
.end method

.method private makeSendReqPdu()I
    .registers 2

    .prologue
    .line 907
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makePdu(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected append(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 289
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write(I)V

    .line 290
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 291
    return-void
.end method

.method protected appendDateValue(J)V
    .registers 3
    .parameter "date"

    .prologue
    .line 490
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 491
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 8
    .parameter "enStr"

    .prologue
    .line 418
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    if-nez p1, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 420
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 421
    .local v0, charset:I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 422
    .local v3, textString:[B
    if-nez v3, :cond_17

    .line 441
    :goto_16
    return-void

    .line 431
    :cond_17
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 432
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 434
    .local v2, start:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 435
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 437
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 438
    .local v1, len:I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 439
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 440
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_16
.end method

.method protected appendLongInteger(J)V
    .registers 12
    .parameter "longInt"

    .prologue
    const/16 v7, 0x8

    .line 351
    move-wide v3, p1

    .line 354
    .local v3, temp:J
    const/4 v2, 0x0

    .local v2, size:I
    :goto_4
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_10

    if-ge v2, v7, :cond_10

    .line 355
    ushr-long/2addr v3, v7

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 359
    :cond_10
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 363
    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v1, v5, 0x8

    .line 365
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v2, :cond_28

    .line 366
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 367
    add-int/lit8 v1, v1, -0x8

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 369
    :cond_28
    return-void
.end method

.method protected appendOctet(I)V
    .registers 2
    .parameter "number"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 320
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 545
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 546
    return-void
.end method

.method protected appendQuotedString([B)V
    .registers 4
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 528
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 529
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 530
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 531
    return-void
.end method

.method protected appendShortInteger(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 308
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 309
    return-void
.end method

.method protected appendShortLength(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 333
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 405
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 406
    return-void
.end method

.method protected appendTextString([B)V
    .registers 5
    .parameter "text"

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 384
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_c

    .line 385
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 388
    :cond_c
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 389
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 390
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .registers 14
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x7f

    .line 458
    const-wide/16 v1, 0x7f

    .line 460
    .local v1, max:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    const/4 v5, 0x5

    if-ge v0, v5, :cond_c

    .line 461
    cmp-long v5, p1, v1

    if-gez v5, :cond_20

    .line 468
    :cond_c
    :goto_c
    if-lez v0, :cond_28

    .line 469
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 470
    .local v3, temp:J
    and-long/2addr v3, v9

    .line 472
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 474
    add-int/lit8 v0, v0, -0x1

    .line 475
    goto :goto_c

    .line 465
    .end local v3           #temp:J
    :cond_20
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 477
    :cond_28
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 478
    return-void
.end method

.method protected appendValueLength(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 507
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 508
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 514
    :goto_a
    return-void

    .line 512
    :cond_b
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_a
.end method

.method protected arraycopy([BII)V
    .registers 5
    .parameter "buf"
    .parameter "pos"
    .parameter "length"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/mms/pdu/PduComposer;->extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    .line 280
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    .line 281
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 282
    return-void
.end method

.method protected createMemoryFile()Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1493
    const/high16 v1, 0x8

    .line 1495
    .local v1, size:I
    :try_start_3
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v4, 0x0

    const/high16 v5, 0x8

    invoke-direct {v2, p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;-><init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_c

    .line 1498
    :goto_b
    return-object v2

    .line 1496
    :catch_c
    move-exception v0

    .line 1497
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 1498
    goto :goto_b
.end method

.method protected extendMemoryFile(Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;I)Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .registers 9
    .parameter "mf"
    .parameter "toWriteLegnth"

    .prologue
    .line 1503
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    iget v4, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    if-lt v3, v4, :cond_2d

    .line 1505
    :try_start_7
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mSize:I

    mul-int/lit8 v2, v3, 0x2

    .line 1507
    .local v2, newsize:I
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    if-lt v3, v2, :cond_15

    .line 1508
    iget v3, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    add-int/2addr v3, p2

    add-int/lit8 v2, v3, 0x1

    .line 1511
    :cond_15
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;-><init>(Lcom/google/android/mms/pdu/PduComposer;Ljava/lang/String;I)V

    .line 1513
    .local v1, newMF:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->mPosition:I

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->write([BII)V

    .line 1516
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_28} :catch_29

    .line 1522
    .end local v1           #newMF:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;
    .end local v2           #newsize:I
    :goto_28
    return-object v1

    .line 1518
    :catch_29
    move-exception v0

    .line 1519
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0           #e:Ljava/io/IOException;
    :cond_2d
    move-object v1, p1

    .line 1522
    goto :goto_28
.end method

.method public make()[B
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    .line 209
    .local v2, type:I
    packed-switch v2, :pswitch_data_92

    .line 271
    :cond_a
    :goto_a
    :pswitch_a
    return-object v1

    .line 211
    :pswitch_b
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v3

    if-nez v3, :cond_a

    .line 252
    :cond_11
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->toByteArray()[B

    move-result-object v1

    .line 254
    .local v1, t:[B
    :try_start_17
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    .line 255
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    if-eqz v3, :cond_a

    .line 256
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 257
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-eqz v3, :cond_3d

    .line 258
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stack:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$100(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    .line 261
    :cond_3d
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 262
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    if-eqz v3, :cond_5a

    .line 263
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    #getter for: Lcom/google/android/mms/pdu/PduComposer$BufferStack;->toCopy:Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->access$200(Lcom/google/android/mms/pdu/PduComposer$BufferStack;)Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;->currentMessage:Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$PduMemoryFile;->close()V

    .line 266
    :cond_5a
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_5d} :catch_5e

    goto :goto_a

    .line 268
    :catch_5e
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "PduComposer"

    const-string v4, "Unexpected IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 216
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #t:[B
    :pswitch_67
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeRetrievePdu()I

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    .line 221
    :pswitch_6e
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    .line 226
    :pswitch_75
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    .line 231
    :pswitch_7c
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    .line 237
    :pswitch_83
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadOrigInd()I

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    .line 242
    :pswitch_8a
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeDeliveryInd()I

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_a

    .line 209
    :pswitch_data_92
    .packed-switch 0x80
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_6e
        :pswitch_67
        :pswitch_75
        :pswitch_8a
        :pswitch_7c
        :pswitch_83
    .end packed-switch
.end method