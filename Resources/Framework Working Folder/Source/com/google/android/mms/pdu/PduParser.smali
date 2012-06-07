.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mCharsetParam:Ljava/lang/Integer;

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 78
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 83
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 88
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mCharsetParam:Ljava/lang/Integer;

    return-void

    .line 35
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 68
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 73
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 103
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 104
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 40
    .parameter "headers"

    .prologue
    .line 1917
    if-nez p0, :cond_5

    .line 1918
    const/16 v37, 0x0

    .line 2124
    :goto_4
    return v37

    .line 1922
    :cond_5
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 1925
    .local v8, messageType:I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 1926
    .local v9, mmsVersion:I
    if-nez v9, :cond_1e

    .line 1928
    const/16 v37, 0x0

    goto :goto_4

    .line 1932
    :cond_1e
    packed-switch v8, :pswitch_data_1f6

    .line 2121
    const/16 v37, 0x0

    goto :goto_4

    .line 1935
    :pswitch_24
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1936
    .local v34, srContentType:[B
    if-nez v34, :cond_33

    .line 1937
    const/16 v37, 0x0

    goto :goto_4

    .line 1941
    :cond_33
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v35

    .line 1942
    .local v35, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v35, :cond_42

    .line 1943
    const/16 v37, 0x0

    goto :goto_4

    .line 1947
    :cond_42
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 1948
    .local v36, srTransactionId:[B
    if-nez v36, :cond_1f2

    .line 1949
    const/16 v37, 0x0

    goto :goto_4

    .line 1955
    .end local v34           #srContentType:[B
    .end local v35           #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v36           #srTransactionId:[B
    :pswitch_51
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 1956
    .local v32, scResponseStatus:I
    if-nez v32, :cond_60

    .line 1957
    const/16 v37, 0x0

    goto :goto_4

    .line 1961
    :cond_60
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 1962
    .local v33, scTransactionId:[B
    if-nez v33, :cond_1f2

    .line 1963
    const/16 v37, 0x0

    goto :goto_4

    .line 1969
    .end local v32           #scResponseStatus:I
    .end local v33           #scTransactionId:[B
    :pswitch_6f
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 1970
    .local v10, niContentLocation:[B
    if-nez v10, :cond_7e

    .line 1971
    const/16 v37, 0x0

    goto :goto_4

    .line 1975
    :cond_7e
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v11

    .line 1976
    .local v11, niExpiry:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v11

    if-nez v37, :cond_92

    .line 1977
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1981
    :cond_92
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v13

    .line 1982
    .local v13, niMessageClass:[B
    if-nez v13, :cond_a2

    .line 1983
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1987
    :cond_a2
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 1988
    .local v14, niMessageSize:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v14

    if-nez v37, :cond_b6

    .line 1989
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1993
    :cond_b6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 1994
    .local v16, niTransactionId:[B
    if-nez v16, :cond_1f2

    .line 1995
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2001
    .end local v10           #niContentLocation:[B
    .end local v11           #niExpiry:J
    .end local v13           #niMessageClass:[B
    .end local v14           #niMessageSize:J
    .end local v16           #niTransactionId:[B
    :pswitch_c6
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 2002
    .local v17, nriStatus:I
    if-nez v17, :cond_d6

    .line 2003
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2007
    :cond_d6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 2008
    .local v18, nriTransactionId:[B
    if-nez v18, :cond_1f2

    .line 2009
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2015
    .end local v17           #nriStatus:I
    .end local v18           #nriTransactionId:[B
    :pswitch_e6
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 2016
    .local v19, rcContentType:[B
    if-nez v19, :cond_f6

    .line 2017
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2021
    :cond_f6
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 2022
    .local v20, rcDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v20

    if-nez v37, :cond_1f2

    .line 2023
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2029
    .end local v19           #rcContentType:[B
    .end local v20           #rcDate:J
    :pswitch_10a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 2030
    .local v3, diDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v3

    if-nez v37, :cond_11e

    .line 2031
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2035
    :cond_11e
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 2036
    .local v5, diMessageId:[B
    if-nez v5, :cond_12e

    .line 2037
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2041
    :cond_12e
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 2042
    .local v6, diStatus:I
    if-nez v6, :cond_13e

    .line 2043
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2047
    :cond_13e
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 2048
    .local v7, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_1f2

    .line 2049
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2055
    .end local v3           #diDate:J
    .end local v5           #diMessageId:[B
    .end local v6           #diStatus:I
    .end local v7           #diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_14e
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 2056
    .local v2, aiTransactionId:[B
    if-nez v2, :cond_1f2

    .line 2057
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2063
    .end local v2           #aiTransactionId:[B
    :pswitch_15e
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 2064
    .local v22, roDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v22

    if-nez v37, :cond_172

    .line 2065
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2069
    :cond_172
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 2070
    .local v24, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_182

    .line 2071
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2075
    :cond_182
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 2076
    .local v25, roMessageId:[B
    if-nez v25, :cond_192

    .line 2077
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2081
    :cond_192
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 2082
    .local v26, roReadStatus:I
    if-nez v26, :cond_1a2

    .line 2083
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2087
    :cond_1a2
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 2088
    .local v27, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_1f2

    .line 2089
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2095
    .end local v22           #roDate:J
    .end local v24           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25           #roMessageId:[B
    .end local v26           #roReadStatus:I
    .end local v27           #roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_1b2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 2096
    .local v28, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_1c2

    .line 2097
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2101
    :cond_1c2
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2102
    .local v29, rrMessageId:[B
    if-nez v29, :cond_1d2

    .line 2103
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2107
    :cond_1d2
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 2108
    .local v30, rrReadStatus:I
    if-nez v30, :cond_1e2

    .line 2109
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2113
    :cond_1e2
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 2114
    .local v31, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_1f2

    .line 2115
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 2124
    .end local v28           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29           #rrMessageId:[B
    .end local v30           #rrReadStatus:I
    .end local v31           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1f2
    const/16 v37, 0x1

    goto/16 :goto_4

    .line 1932
    :pswitch_data_1f6
    .packed-switch 0x80
        :pswitch_24
        :pswitch_51
        :pswitch_6f
        :pswitch_c6
        :pswitch_e6
        :pswitch_14e
        :pswitch_10a
        :pswitch_1b2
        :pswitch_15e
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 6
    .parameter "part"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1881
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_e

    if-nez p0, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1882
    :cond_e
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_17

    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_17

    .line 1907
    :cond_16
    :goto_16
    return v2

    .line 1888
    :cond_17
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_2b

    .line 1889
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1890
    .local v0, contentId:[B
    if-eqz v0, :cond_2b

    .line 1891
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_2b

    move v2, v3

    .line 1892
    goto :goto_16

    .line 1898
    .end local v0           #contentId:[B
    :cond_2b
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_16

    .line 1899
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1900
    .local v1, contentType:[B
    if-eqz v1, :cond_16

    .line 1901
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_16

    move v2, v3

    .line 1902
    goto :goto_16
.end method

.method private convertToMixedMessage(Ljava/lang/String;Lcom/google/android/mms/pdu/PduHeaders;Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .registers 13
    .parameter "contentType"
    .parameter "headers"
    .parameter "pduDataStream"

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x84

    .line 218
    const-string v6, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p2, v6, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 220
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 221
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v4, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 223
    .local v4, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 224
    sget-object v6, Lcom/google/android/mms/pdu/PduParser;->mCharsetParam:Ljava/lang/Integer;

    if-eqz v6, :cond_2a

    .line 225
    sget-object v6, Lcom/google/android/mms/pdu/PduParser;->mCharsetParam:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 227
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 229
    invoke-virtual {p3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    new-array v1, v6, [B

    .line 231
    .local v1, data:[B
    :try_start_3f
    invoke-virtual {p3, v1}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_58

    .line 237
    invoke-virtual {v4, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 238
    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 240
    const/16 v6, 0x8c

    invoke-virtual {p2, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 241
    .local v3, messageType:I
    const/16 v6, 0x80

    if-ne v3, v6, :cond_5f

    .line 242
    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5, p2, v0}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 246
    .end local v3           #messageType:I
    :cond_57
    :goto_57
    return-object v5

    .line 232
    :catch_58
    move-exception v2

    .line 233
    .local v2, e:Ljava/io/IOException;
    const-string v6, "cannot read pdu body data!"

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_57

    .line 243
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #messageType:I
    :cond_5f
    if-ne v3, v8, :cond_57

    .line 244
    new-instance v5, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-direct {v5, p2, v0}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_57
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1244
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1245
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1246
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1247
    :cond_1d
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 8
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v5, -0x1

    .line 1200
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_d

    if-nez p0, :cond_d

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1201
    :cond_d
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1202
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1203
    .local v3, temp:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_22

    if-ne v5, v3, :cond_22

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1204
    :cond_22
    if-eq v5, v3, :cond_4c

    if-eqz v3, :cond_4c

    .line 1206
    const/4 v4, 0x2

    if-ne p1, v4, :cond_42

    .line 1207
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1208
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1216
    :cond_32
    :goto_32
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1217
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_22

    if-ne v5, v3, :cond_22

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1211
    :cond_42
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1212
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_32

    .line 1221
    :cond_4c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-lez v4, :cond_65

    .line 1222
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    new-array v1, v4, [B

    .line 1223
    .local v1, mData:[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 1225
    :try_start_5c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 1234
    .end local v1           #mData:[B
    :goto_5f
    return-object v1

    .line 1226
    .restart local v1       #mData:[B
    :catch_60
    move-exception v0

    .line 1228
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    .line 1234
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #mData:[B
    :cond_65
    const/4 v1, 0x0

    goto :goto_5f
.end method

.method protected static isText(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    .line 1184
    const/16 v1, 0x20

    if-lt p0, v1, :cond_9

    const/16 v1, 0x7e

    if-le p0, v1, :cond_11

    :cond_9
    const/16 v1, 0x80

    if-lt p0, v1, :cond_12

    const/16 v1, 0xff

    if-gt p0, v1, :cond_12

    .line 1195
    :cond_11
    :goto_11
    :pswitch_11
    return v0

    .line 1188
    :cond_12
    packed-switch p0, :pswitch_data_18

    .line 1195
    :pswitch_15
    const/4 v0, 0x0

    goto :goto_11

    .line 1188
    nop

    :pswitch_data_18
    .packed-switch 0x9
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v0, 0x0

    .line 1140
    const/16 v1, 0x21

    if-lt p0, v1, :cond_9

    const/16 v1, 0x7e

    if-le p0, v1, :cond_a

    .line 1165
    :cond_9
    :goto_9
    :sswitch_9
    return v0

    .line 1144
    :cond_a
    sparse-switch p0, :sswitch_data_10

    .line 1165
    const/4 v0, 0x1

    goto :goto_9

    .line 1144
    nop

    :sswitch_data_10
    .sparse-switch
        0x22 -> :sswitch_9
        0x28 -> :sswitch_9
        0x29 -> :sswitch_9
        0x2c -> :sswitch_9
        0x2f -> :sswitch_9
        0x3a -> :sswitch_9
        0x3b -> :sswitch_9
        0x3c -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x40 -> :sswitch_9
        0x5b -> :sswitch_9
        0x5c -> :sswitch_9
        0x5d -> :sswitch_9
        0x7b -> :sswitch_9
        0x7d -> :sswitch_9
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 957
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 3
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1601
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/util/HashMap;)[B

    move-result-object v0

    return-object v0
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/util/HashMap;)[B
    .registers 14
    .parameter "pduDataStream"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1612
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .local p2, extramap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_c

    if-nez p0, :cond_c

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1614
    :cond_c
    const/4 v0, 0x0

    .line 1615
    .local v0, contentType:[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1616
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1617
    .local v8, temp:I
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_22

    const/4 v9, -0x1

    if-ne v9, v8, :cond_22

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1618
    :cond_22
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1620
    and-int/lit16 v1, v8, 0xff

    .line 1622
    .local v1, cur:I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_ae

    .line 1623
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1624
    .local v5, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1625
    .local v7, startPos:I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1626
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1627
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_48

    const/4 v9, -0x1

    if-ne v9, v8, :cond_48

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1628
    :cond_48
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1629
    and-int/lit16 v3, v8, 0xff

    .line 1631
    .local v3, first:I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_7e

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_7e

    .line 1632
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1647
    :goto_5a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1648
    .local v2, endPos:I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1649
    .local v6, parameterLen:I
    if-lez v6, :cond_6b

    .line 1652
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, p2, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1655
    :cond_6b
    if-gez v6, :cond_b7

    .line 1656
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1666
    .end local v2           #endPos:I
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v6           #parameterLen:I
    .end local v7           #startPos:I
    :goto_7d
    return-object v9

    .line 1633
    .restart local v3       #first:I
    .restart local v5       #length:I
    .restart local v7       #startPos:I
    :cond_7e
    const/16 v9, 0x7f

    if-le v3, v9, :cond_9d

    .line 1634
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1636
    .local v4, index:I
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_94

    .line 1637
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_5a

    .line 1639
    :cond_94
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1640
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_5a

    .line 1643
    .end local v4           #index:I
    :cond_9d
    const-string v9, "PduParser"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_7d

    .line 1659
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v7           #startPos:I
    :cond_ae
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_b9

    .line 1660
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_b7
    :goto_b7
    move-object v9, v0

    .line 1666
    goto :goto_7d

    .line 1662
    :cond_b9
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_b7
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 4
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1360
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1361
    return-void
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 26
    .parameter "pduDataStream"
    .parameter
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1383
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .local p2, extramap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-boolean v19, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v19, :cond_c

    if-nez p0, :cond_c

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1384
    :cond_c
    sget-boolean v19, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v19, :cond_1c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-gtz v19, :cond_1c

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1386
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1387
    .local v16, startPos:I
    const/16 v17, 0x0

    .line 1388
    .local v17, tempPos:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1389
    .local v12, lastLen:I
    :goto_26
    if-lez v12, :cond_2d8

    .line 1390
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x59

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3c

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0x1b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_45

    .line 1392
    :cond_3c
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1394
    :cond_45
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1395
    .local v14, param:I
    sget-boolean v19, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v19, :cond_59

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v0, v14, :cond_59

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    .line 1396
    :cond_59
    add-int/lit8 v12, v12, -0x1

    .line 1398
    sparse-switch v14, :sswitch_data_2e2

    .line 1526
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x78

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7c

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x59

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7c

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0x1b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2be

    .line 1531
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1532
    add-int/lit8 v12, v12, 0x1

    .line 1533
    new-instance v3, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 1534
    .local v3, Param:Ljava/lang/String;
    const-string v19, "Application-ID"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_234

    .line 1535
    const-string v19, "Aplix - parse CONTENT_TYPE_APPLICATION_ID"

    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1536
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1537
    .local v4, appId:[B
    if-eqz v4, :cond_d7

    if-eqz p2, :cond_d7

    .line 1538
    const-string v19, "PduParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Application-ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const-string v19, "Application-ID"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    :cond_d7
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1543
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1544
    goto/16 :goto_26

    .line 1414
    .end local v3           #Param:Ljava/lang/String;
    .end local v4           #appId:[B
    :sswitch_e5
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1415
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1416
    .local v9, first:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1417
    const/16 v19, 0x7f

    move/from16 v0, v19

    if-le v9, v0, :cond_12f

    .line 1419
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 1421
    .local v11, index:I
    sget-object v19, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_121

    .line 1422
    sget-object v19, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v19, v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    .line 1423
    .local v18, type:[B
    const/16 v19, 0x83

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    .end local v11           #index:I
    .end local v18           #type:[B
    :cond_121
    :goto_121
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1436
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1437
    goto/16 :goto_26

    .line 1429
    :cond_12f
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v18

    .line 1430
    .restart local v18       #type:[B
    if-eqz v18, :cond_121

    if-eqz p1, :cond_121

    .line 1431
    const/16 v19, 0x83

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_121

    .line 1454
    .end local v9           #first:I
    .end local v18           #type:[B
    :sswitch_14d
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 1455
    .local v15, start:[B
    if-eqz v15, :cond_168

    if-eqz p1, :cond_168

    .line 1456
    const/16 v19, 0x99

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    :cond_168
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1460
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1461
    goto/16 :goto_26

    .line 1478
    .end local v15           #start:[B
    :sswitch_176
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1479
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 1480
    .local v10, firstValue:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1482
    const/16 v19, 0x20

    move/from16 v0, v19

    if-le v10, v0, :cond_192

    const/16 v19, 0x7f

    move/from16 v0, v19

    if-lt v10, v0, :cond_194

    :cond_192
    if-nez v10, :cond_1ee

    .line 1485
    :cond_194
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v7

    .line 1487
    .local v7, charsetStr:[B
    :try_start_19e
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v6

    .line 1489
    .local v6, charsetInt:I
    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1bc
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19e .. :try_end_1bc} :catch_1ca

    .line 1503
    .end local v6           #charsetInt:I
    .end local v7           #charsetStr:[B
    :cond_1bc
    :goto_1bc
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1504
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1505
    goto/16 :goto_26

    .line 1490
    .restart local v7       #charsetStr:[B
    :catch_1ca
    move-exception v8

    .line 1492
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    const-string v19, "PduParser"

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1493
    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1bc

    .line 1497
    .end local v7           #charsetStr:[B
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1ee
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v5, v0

    .line 1498
    .local v5, charset:I
    if-eqz p1, :cond_1bc

    .line 1499
    const/16 v19, 0x81

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1bc

    .line 1517
    .end local v5           #charset:I
    .end local v10           #firstValue:I
    :sswitch_20b
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1518
    .local v13, name:[B
    if-eqz v13, :cond_226

    if-eqz p1, :cond_226

    .line 1519
    const/16 v19, 0x97

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    :cond_226
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1523
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1524
    goto/16 :goto_26

    .line 1544
    .end local v13           #name:[B
    .restart local v3       #Param:Ljava/lang/String;
    :cond_234
    const-string v19, "Reply-To-Application-ID"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_287

    .line 1545
    const-string v19, "Aplix - parse CONTENT_TYPE_REPLY_TO_APPLICATION_ID"

    invoke-static/range {v19 .. v19}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1546
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1547
    .restart local v4       #appId:[B
    if-eqz v4, :cond_279

    if-eqz p2, :cond_279

    .line 1548
    const-string v19, "PduParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reply-To-Application-ID: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    const-string v19, "Reply-To-Application-ID"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    :cond_279
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1553
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    sub-int v20, v16, v17

    sub-int v12, v19, v20

    .line 1554
    goto/16 :goto_26

    .line 1559
    .end local v4           #appId:[B
    :cond_287
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1561
    const/16 v19, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a1

    .line 1562
    const-string v19, "PduParser"

    const-string v20, "Corrupt Content-Type"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1564
    :cond_2a1
    const/4 v12, 0x0

    .line 1565
    const-string v19, "PduParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "End of file: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1574
    .end local v3           #Param:Ljava/lang/String;
    :cond_2be
    const/16 v19, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2d5

    .line 1575
    const-string v19, "PduParser"

    const-string v20, "Corrupt Content-Type"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1578
    :cond_2d5
    const/4 v12, 0x0

    goto/16 :goto_26

    .line 1586
    .end local v14           #param:I
    :cond_2d8
    if-eqz v12, :cond_2e1

    .line 1587
    const-string v19, "PduParser"

    const-string v20, "Corrupt Content-Type"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_2e1
    return-void

    .line 1398
    :sswitch_data_2e2
    .sparse-switch
        0x81 -> :sswitch_176
        0x83 -> :sswitch_e5
        0x85 -> :sswitch_20b
        0x89 -> :sswitch_e5
        0x8a -> :sswitch_14d
        0x97 -> :sswitch_20b
        0x99 -> :sswitch_14d
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 9
    .parameter "pduDataStream"

    .prologue
    .line 1033
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_c

    if-nez p0, :cond_c

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1034
    :cond_c
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1035
    const/4 v3, 0x0

    .line 1036
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1037
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1040
    .local v5, temp:I
    if-nez v5, :cond_1a

    move-object v7, v3

    .line 1066
    :goto_19
    return-object v7

    .line 1044
    :cond_1a
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_27

    const/4 v7, -0x1

    if-ne v7, v5, :cond_27

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1045
    :cond_27
    and-int/lit16 v2, v5, 0xff

    .line 1047
    .local v2, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1048
    const/16 v7, 0x20

    if-ge v2, v7, :cond_37

    .line 1049
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1051
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1054
    :cond_37
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1057
    .local v6, textString:[B
    if-eqz v0, :cond_46

    .line 1058
    :try_start_3e
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_44
    move-object v7, v3

    .line 1066
    goto :goto_19

    .line 1060
    :cond_46
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4b} :catch_4d

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_44

    .line 1062
    :catch_4d
    move-exception v1

    .line 1063
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_19
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4
    .parameter "pduDataStream"

    .prologue
    .line 1319
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1320
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1321
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1322
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1323
    :cond_21
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1324
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2e

    .line 1325
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1327
    :goto_2d
    return-wide v1

    :cond_2e
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_2d
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 10
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1287
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    if-nez p0, :cond_f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1288
    :cond_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1289
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1f

    if-ne v7, v4, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1290
    :cond_1f
    and-int/lit16 v0, v4, 0xff

    .line 1292
    .local v0, count:I
    if-le v0, v8, :cond_2b

    .line 1293
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1296
    :cond_2b
    const-wide/16 v2, 0x0

    .line 1298
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v0, :cond_48

    .line 1299
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1300
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_40

    if-ne v7, v4, :cond_40

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1301
    :cond_40
    shl-long/2addr v2, v8

    .line 1302
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1298
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1305
    :cond_48
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 24
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1679
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_c

    if-nez p0, :cond_c

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1680
    :cond_c
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_18

    if-nez p1, :cond_18

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1681
    :cond_18
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_24

    if-gtz p2, :cond_24

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1699
    :cond_24
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1700
    .local v10, startPos:I
    const/4 v13, 0x0

    .line 1701
    .local v13, tempPos:I
    move/from16 v8, p2

    .line 1702
    .local v8, lastLen:I
    :cond_2b
    :goto_2b
    if-lez v8, :cond_210

    .line 1703
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 1704
    .local v6, header:I
    sget-boolean v18, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v18, :cond_41

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_41

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1705
    :cond_41
    add-int/lit8 v8, v8, -0x1

    .line 1707
    const/16 v18, 0x7f

    move/from16 v0, v18

    if-le v6, v0, :cond_1b0

    .line 1709
    sparse-switch v6, :sswitch_data_222

    .line 1832
    const/16 v18, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ad

    .line 1833
    const-string v18, "PduParser"

    const-string v19, "Corrupt Part headers"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const/16 v18, 0x0

    .line 1870
    .end local v6           #header:I
    :goto_63
    return v18

    .line 1713
    .restart local v6       #header:I
    :sswitch_64
    const/16 v18, 0x0

    :try_start_66
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1715
    .local v4, contentLocation:[B
    if-eqz v4, :cond_7b

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v18

    if-nez v18, :cond_7b

    .line 1716
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1719
    :cond_7b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_7e} :catch_84

    move-result v13

    .line 1720
    sub-int v18, v10, v13

    sub-int v8, p2, v18

    goto :goto_2b

    .line 1722
    .end local v4           #contentLocation:[B
    :catch_84
    move-exception v5

    .line 1723
    .local v5, e:Ljava/lang/Exception;
    const-string v18, "PduParser"

    const-string/jumbo v19, "parsePartHeaders(176) Exception"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 1733
    .end local v5           #e:Ljava/lang/Exception;
    :sswitch_91
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1734
    .restart local v4       #contentLocation:[B
    if-eqz v4, :cond_a2

    .line 1735
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1738
    :cond_a2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1739
    sub-int v18, v10, v13

    sub-int v8, p2, v18

    .line 1740
    goto :goto_2b

    .line 1746
    .end local v4           #contentLocation:[B
    :sswitch_ab
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1747
    .local v3, contentId:[B
    if-eqz v3, :cond_bc

    .line 1748
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1751
    :cond_bc
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1752
    sub-int v18, v10, v13

    sub-int v8, p2, v18

    .line 1753
    goto/16 :goto_2b

    .line 1769
    .end local v3           #contentId:[B
    :sswitch_c6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x111002c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1772
    .local v2, contentDisposition:Z
    if-eqz v2, :cond_2b

    .line 1774
    const/4 v9, -0x1

    .line 1776
    .local v9, len:I
    :try_start_d4
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I
    :try_end_d7
    .catch Ljava/lang/RuntimeException; {:try_start_d4 .. :try_end_d7} :catch_145

    move-result v9

    .line 1788
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1789
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1790
    .local v16, thisStartPos:I
    const/4 v15, 0x0

    .line 1791
    .local v15, thisEndPos:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v17

    .line 1793
    .local v17, value:I
    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_171

    .line 1794
    sget-object v18, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1807
    :goto_fb
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1808
    sub-int v18, v16, v15

    move/from16 v0, v18

    if-ge v0, v9, :cond_13b

    .line 1809
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v17

    .line 1810
    const/16 v18, 0x98

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_122

    .line 1811
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1816
    :cond_122
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1817
    sub-int v18, v16, v15

    move/from16 v0, v18

    if-ge v0, v9, :cond_13b

    .line 1818
    sub-int v18, v16, v15

    sub-int v7, v9, v18

    .line 1819
    .local v7, last:I
    new-array v11, v7, [B

    .line 1820
    .local v11, temp:[B
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1824
    .end local v7           #last:I
    .end local v11           #temp:[B
    :cond_13b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1825
    sub-int v18, v10, v13

    sub-int v8, p2, v18

    .line 1826
    goto/16 :goto_2b

    .line 1777
    .end local v15           #thisEndPos:I
    .end local v16           #thisStartPos:I
    .end local v17           #value:I
    :catch_145
    move-exception v5

    .line 1778
    .local v5, e:Ljava/lang/RuntimeException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : Invalid value length"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 1783
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .line 1784
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v18

    sub-int v18, v10, v18

    sub-int v8, p2, v18

    .line 1785
    goto/16 :goto_2b

    .line 1795
    .end local v5           #e:Ljava/lang/RuntimeException;
    .restart local v15       #thisEndPos:I
    .restart local v16       #thisStartPos:I
    .restart local v17       #value:I
    :cond_171
    const/16 v18, 0x81

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_184

    .line 1796
    sget-object v18, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_fb

    .line 1797
    :cond_184
    const/16 v18, 0x82

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_197

    .line 1798
    sget-object v18, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_fb

    .line 1800
    :cond_197
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1802
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_fb

    .line 1836
    .end local v2           #contentDisposition:Z
    .end local v9           #len:I
    .end local v15           #thisEndPos:I
    .end local v16           #thisStartPos:I
    .end local v17           #value:I
    :cond_1ad
    const/4 v8, 0x0

    goto/16 :goto_2b

    .line 1839
    :cond_1b0
    const/16 v18, 0x20

    move/from16 v0, v18

    if-lt v6, v0, :cond_1f4

    const/16 v18, 0x7f

    move/from16 v0, v18

    if-gt v6, v0, :cond_1f4

    .line 1841
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v12

    .line 1842
    .local v12, tempHeader:[B
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v14

    .line 1845
    .local v14, tempValue:[B
    const/16 v18, 0x1

    const-string v19, "Content-Transfer-Encoding"

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1ea

    .line 1847
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1850
    :cond_1ea
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1851
    sub-int v18, v10, v13

    sub-int v8, p2, v18

    .line 1852
    goto/16 :goto_2b

    .line 1857
    .end local v12           #tempHeader:[B
    .end local v14           #tempValue:[B
    :cond_1f4
    const/16 v18, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20d

    .line 1858
    const-string v18, "PduParser"

    const-string v19, "Corrupt Part headers"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const/16 v18, 0x0

    goto/16 :goto_63

    .line 1861
    :cond_20d
    const/4 v8, 0x0

    goto/16 :goto_2b

    .line 1865
    .end local v6           #header:I
    :cond_210
    if-eqz v8, :cond_21d

    .line 1866
    const-string v18, "PduParser"

    const-string v19, "Corrupt Part headers"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const/16 v18, 0x0

    goto/16 :goto_63

    .line 1870
    :cond_21d
    const/16 v18, 0x1

    goto/16 :goto_63

    .line 1709
    nop

    :sswitch_data_222
    .sparse-switch
        0x8e -> :sswitch_91
        0xae -> :sswitch_c6
        0xb0 -> :sswitch_64
        0xc0 -> :sswitch_ab
        0xc5 -> :sswitch_c6
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .registers 24
    .parameter "pduDataStream"

    .prologue
    .line 838
    if-nez p0, :cond_4

    .line 839
    const/4 v3, 0x0

    .line 945
    :cond_3
    :goto_3
    return-object v3

    .line 842
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 843
    .local v7, count:I
    new-instance v3, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 845
    .local v3, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_e
    if-ge v12, v7, :cond_3

    .line 846
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 847
    .local v11, headerLength:I
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 848
    .local v8, dataLength:I
    new-instance v15, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v15}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 849
    .local v15, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v20

    .line 850
    .local v20, startPos:I
    if-gtz v20, :cond_25

    .line 852
    const/4 v3, 0x0

    goto :goto_3

    .line 856
    :cond_25
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 859
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v13, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 860
    .local v6, contentType:[B
    if-eqz v6, :cond_7f

    .line 861
    invoke-virtual {v15, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 867
    :goto_39
    const/16 v21, 0x97

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    move-object/from16 v14, v21

    check-cast v14, [B

    .line 868
    .local v14, name:[B
    if-eqz v14, :cond_50

    .line 869
    invoke-virtual {v15, v14}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 873
    :cond_50
    const/16 v21, 0x81

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 874
    .local v4, charset:Ljava/lang/Integer;
    if-eqz v4, :cond_69

    .line 875
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 879
    :cond_69
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 880
    .local v10, endPos:I
    sub-int v21, v20, v10

    sub-int v19, v11, v21

    .line 881
    .local v19, partHeaderLen:I
    if-lez v19, :cond_8f

    .line 882
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v15, v1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v21

    if-nez v21, :cond_94

    .line 884
    const/4 v3, 0x0

    goto :goto_3

    .line 863
    .end local v4           #charset:Ljava/lang/Integer;
    .end local v10           #endPos:I
    .end local v14           #name:[B
    .end local v19           #partHeaderLen:I
    :cond_7f
    sget-object v21, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_39

    .line 886
    .restart local v4       #charset:Ljava/lang/Integer;
    .restart local v10       #endPos:I
    .restart local v14       #name:[B
    .restart local v19       #partHeaderLen:I
    :cond_8f
    if-gez v19, :cond_94

    .line 888
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 894
    :cond_94
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v21

    if-nez v21, :cond_bd

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v21

    if-nez v21, :cond_bd

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v21

    if-nez v21, :cond_bd

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v21

    if-nez v21, :cond_bd

    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 903
    :cond_bd
    if-lez v8, :cond_fc

    .line 904
    new-array v0, v8, [B

    move-object/from16 v17, v0

    .line 905
    .local v17, partData:[B
    new-instance v16, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 906
    .local v16, partContentType:Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 907
    const-string v21, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_10d

    .line 909
    new-instance v21, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 911
    .local v5, childBody:Lcom/google/android/mms/pdu/PduBody;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 936
    .end local v5           #childBody:Lcom/google/android/mms/pdu/PduBody;
    .end local v16           #partContentType:Ljava/lang/String;
    .end local v17           #partData:[B
    :cond_fc
    :goto_fc
    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v21

    if-nez v21, :cond_148

    .line 938
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v0, v15}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 845
    :goto_109
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_e

    .line 914
    .restart local v16       #partContentType:Ljava/lang/String;
    .restart local v17       #partData:[B
    :cond_10d
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v18

    .line 915
    .local v18, partDataEncoding:[B
    if-eqz v18, :cond_128

    .line 916
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 917
    .local v9, encoding:Ljava/lang/String;
    const-string v21, "base64"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_132

    .line 919
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v17

    .line 927
    .end local v9           #encoding:Ljava/lang/String;
    :cond_128
    :goto_128
    if-nez v17, :cond_142

    .line 928
    const-string v21, "Decode part data error!"

    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 929
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 920
    .restart local v9       #encoding:Ljava/lang/String;
    :cond_132
    const-string/jumbo v21, "quoted-printable"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_128

    .line 922
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v17

    goto :goto_128

    .line 931
    .end local v9           #encoding:Ljava/lang/String;
    :cond_142
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_fc

    .line 941
    .end local v16           #partContentType:Ljava/lang/String;
    .end local v17           #partData:[B
    .end local v18           #partDataEncoding:[B
    :cond_148
    invoke-virtual {v3, v15}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_109
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1264
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1265
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1266
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1267
    :cond_1d
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 971
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 972
    :cond_d
    const/4 v0, 0x0

    .line 973
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 974
    .local v1, temp:I
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 990
    :goto_15
    return v2

    .line 978
    :cond_16
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_27

    .line 979
    shl-int/lit8 v0, v0, 0x7

    .line 980
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 981
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 982
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 983
    goto :goto_15

    .line 987
    :cond_27
    shl-int/lit8 v0, v0, 0x7

    .line 988
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 990
    goto :goto_15
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    .line 1008
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1009
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1010
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1011
    :cond_1d
    and-int/lit16 v0, v1, 0xff

    .line 1013
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_24

    .line 1016
    .end local v0           #first:I
    :goto_23
    return v0

    .line 1015
    .restart local v0       #first:I
    :cond_24
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2d

    .line 1016
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_23

    .line 1019
    :cond_2d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 1078
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    if-nez p0, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1096
    :cond_d
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1099
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1100
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1101
    :cond_21
    if-ne v2, p1, :cond_2f

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2f

    .line 1104
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1119
    :goto_2a
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1105
    :cond_2f
    if-nez p1, :cond_39

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_39

    .line 1108
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_2a

    .line 1111
    :cond_39
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_2a
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1339
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1340
    :cond_c
    new-array v0, p1, [B

    .line 1341
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1342
    .local v1, readLen:I
    if-ge v1, p1, :cond_16

    .line 1343
    const/4 v1, -0x1

    .line 1345
    .end local v1           #readLen:I
    :cond_16
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 16

    .prologue
    .line 113
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v13, :cond_6

    .line 114
    const/4 v10, 0x0

    .line 212
    :cond_5
    :goto_5
    return-object v10

    .line 118
    :cond_6
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v13}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v13

    iput-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 119
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v13, :cond_14

    .line 121
    const/4 v10, 0x0

    goto :goto_5

    .line 125
    :cond_14
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v14, 0x8c

    invoke-virtual {v13, v14}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v5

    .line 128
    .local v5, messageType:I
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v13

    if-nez v13, :cond_2b

    .line 129
    const-string v13, "check mandatory headers failed!"

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 130
    const/4 v10, 0x0

    goto :goto_5

    .line 133
    :cond_2b
    const/16 v13, 0x80

    if-eq v13, v5, :cond_33

    const/16 v13, 0x84

    if-ne v13, v5, :cond_6b

    .line 135
    :cond_33
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v14, 0x84

    invoke-virtual {v13, v14}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 136
    .local v1, contentType:[B
    if-nez v1, :cond_3f

    .line 137
    const/4 v10, 0x0

    goto :goto_5

    .line 140
    :cond_3f
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 141
    .local v2, ctTypeStr:Ljava/lang/String;
    const-string v13, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_54

    const-string v13, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_62

    .line 144
    :cond_54
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v13

    iput-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 145
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v13, :cond_6b

    .line 147
    const/4 v10, 0x0

    goto :goto_5

    .line 150
    :cond_62
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v14, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v2, v13, v14}, Lcom/google/android/mms/pdu/PduParser;->convertToMixedMessage(Ljava/lang/String;Lcom/google/android/mms/pdu/PduHeaders;Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-result-object v10

    goto :goto_5

    .line 154
    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    :cond_6b
    packed-switch v5, :pswitch_data_114

    .line 211
    const-string v13, "Parser doesn\'t support this message type in this version!"

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 212
    const/4 v10, 0x0

    goto :goto_5

    .line 156
    :pswitch_75
    new-instance v12, Lcom/google/android/mms/pdu/SendReq;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v14, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v12, v13, v14}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v12, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object v10, v12

    .line 157
    goto :goto_5

    .line 159
    .end local v12           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_80
    new-instance v11, Lcom/google/android/mms/pdu/SendConf;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11, v13}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v11, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object v10, v11

    .line 160
    goto/16 :goto_5

    .line 162
    .end local v11           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_8a
    new-instance v6, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v6, v13}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v6, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v10, v6

    .line 164
    goto/16 :goto_5

    .line 166
    .end local v6           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_94
    new-instance v7, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v7, v13}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v10, v7

    .line 168
    goto/16 :goto_5

    .line 170
    .end local v7           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_9e
    new-instance v10, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v14, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v10, v13, v14}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 173
    .local v10, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v1

    .line 174
    .restart local v1       #contentType:[B
    if-nez v1, :cond_b0

    .line 175
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 177
    :cond_b0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 178
    .restart local v2       #ctTypeStr:Ljava/lang/String;
    const-string v13, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 185
    const-string v13, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e9

    .line 188
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 189
    .local v4, firstPart:Lcom/google/android/mms/pdu/PduPart;
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 190
    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_5

    .line 193
    .end local v4           #firstPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_e9
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 195
    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local v10           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_ec
    new-instance v3, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3, v13}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v10, v3

    .line 197
    goto/16 :goto_5

    .line 199
    .end local v3           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_f6
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v13}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v10, v0

    .line 201
    goto/16 :goto_5

    .line 203
    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_100
    new-instance v8, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v13}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v10, v8

    .line 205
    goto/16 :goto_5

    .line 207
    .end local v8           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_10a
    new-instance v9, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v9, v13}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v9, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v10, v9

    .line 209
    goto/16 :goto_5

    .line 154
    :pswitch_data_114
    .packed-switch 0x80
        :pswitch_75
        :pswitch_80
        :pswitch_8a
        :pswitch_94
        :pswitch_9e
        :pswitch_f6
        :pswitch_ec
        :pswitch_10a
        :pswitch_100
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 35
    .parameter "pduDataStream"

    .prologue
    .line 257
    if-nez p1, :cond_4

    .line 258
    const/4 v13, 0x0

    .line 828
    :cond_3
    :goto_3
    return-object v13

    .line 261
    :cond_4
    const/4 v14, 0x1

    .line 262
    .local v14, keepParsing:Z
    new-instance v13, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v13}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 264
    .local v13, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_a
    :goto_a
    if-eqz v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v29

    if-lez v29, :cond_3

    .line 265
    const/16 v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 266
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 268
    .local v12, headerField:I
    const/16 v29, 0x20

    move/from16 v0, v29

    if-lt v12, v0, :cond_39

    const/16 v29, 0x7f

    move/from16 v0, v29

    if-gt v12, v0, :cond_39

    .line 269
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 270
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 275
    .local v4, bVal:[B
    goto :goto_a

    .line 277
    .end local v4           #bVal:[B
    :cond_39
    packed-switch v12, :pswitch_data_66a

    .line 823
    :pswitch_3c
    const-string v29, "Unknown header"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_a

    .line 280
    :pswitch_42
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v18

    .line 281
    .local v18, messageType:I
    packed-switch v18, :pswitch_data_6ec

    .line 301
    :try_start_49
    move/from16 v0, v18

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_4e
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_49 .. :try_end_4e} :catch_4f
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4e} :catch_7a

    goto :goto_a

    .line 302
    :catch_4f
    move-exception v6

    .line 303
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Set invalid Octet value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " into the header filed: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 305
    const/4 v13, 0x0

    goto :goto_3

    .line 298
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_78
    const/4 v13, 0x0

    goto :goto_3

    .line 306
    :catch_7a
    move-exception v6

    .line 307
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Octet header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 308
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 341
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v18           #messageType:I
    :pswitch_97
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 344
    .local v26, value:I
    :try_start_9b
    move/from16 v0, v26

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_a0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_9b .. :try_end_a0} :catch_a2
    .catch Ljava/lang/RuntimeException; {:try_start_9b .. :try_end_a0} :catch_cc

    goto/16 :goto_a

    .line 345
    :catch_a2
    move-exception v6

    .line 346
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Set invalid Octet value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " into the header filed: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 348
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 349
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_cc
    move-exception v6

    .line 350
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Octet header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 351
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 362
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #value:I
    :pswitch_e9
    :try_start_e9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 363
    .local v26, value:J
    move-wide/from16 v0, v26

    invoke-virtual {v13, v0, v1, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_f2
    .catch Ljava/lang/RuntimeException; {:try_start_e9 .. :try_end_f2} :catch_f4

    goto/16 :goto_a

    .line 364
    .end local v26           #value:J
    :catch_f4
    move-exception v6

    .line 365
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 366
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 377
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_111
    :try_start_111
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v26

    .line 378
    .restart local v26       #value:J
    move-wide/from16 v0, v26

    invoke-virtual {v13, v0, v1, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_11a
    .catch Ljava/lang/RuntimeException; {:try_start_111 .. :try_end_11a} :catch_11c

    goto/16 :goto_a

    .line 379
    .end local v26           #value:J
    :catch_11c
    move-exception v6

    .line 380
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 381
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 407
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_139
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v26

    .line 408
    .local v26, value:[B
    if-eqz v26, :cond_a

    .line 410
    :try_start_145
    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_14a
    .catch Ljava/lang/NullPointerException; {:try_start_145 .. :try_end_14a} :catch_14c
    .catch Ljava/lang/RuntimeException; {:try_start_145 .. :try_end_14a} :catch_155

    goto/16 :goto_a

    .line 411
    :catch_14c
    move-exception v6

    .line 412
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 413
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_155
    move-exception v6

    .line 414
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 415
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 431
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #value:[B
    :pswitch_172
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 433
    .local v26, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_a

    .line 435
    :try_start_178
    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_17d
    .catch Ljava/lang/NullPointerException; {:try_start_178 .. :try_end_17d} :catch_17f
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_17d} :catch_188

    goto/16 :goto_a

    .line 436
    :catch_17f
    move-exception v6

    .line 437
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 438
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_188
    move-exception v6

    .line 439
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 440
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 451
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_1a5
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v26

    .line 453
    .restart local v26       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v26, :cond_a

    .line 454
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 455
    .local v3, address:[B
    if-eqz v3, :cond_1d9

    .line 456
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 457
    .local v22, str:Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 458
    .local v7, endIndex:I
    if-lez v7, :cond_1ce

    .line 459
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 462
    :cond_1ce
    :try_start_1ce
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_1d9
    .catch Ljava/lang/NullPointerException; {:try_start_1ce .. :try_end_1d9} :catch_1e9

    .line 470
    .end local v7           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :cond_1d9
    :try_start_1d9
    move-object/from16 v0, v26

    invoke-virtual {v13, v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_1de
    .catch Ljava/lang/NullPointerException; {:try_start_1d9 .. :try_end_1de} :catch_1e0
    .catch Ljava/lang/RuntimeException; {:try_start_1d9 .. :try_end_1de} :catch_1f3

    goto/16 :goto_a

    .line 471
    :catch_1e0
    move-exception v6

    .line 472
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 463
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v7       #endIndex:I
    .restart local v22       #str:Ljava/lang/String;
    :catch_1e9
    move-exception v6

    .line 464
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 465
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 473
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :catch_1f3
    move-exception v6

    .line 474
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 475
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 488
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_210
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 491
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .line 496
    .local v25, token:I
    :try_start_217
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_21a
    .catch Ljava/lang/RuntimeException; {:try_start_217 .. :try_end_21a} :catch_251

    move-result-wide v23

    .line 501
    .local v23, timeValue:J
    const/16 v29, 0x81

    move/from16 v0, v29

    move/from16 v1, v25

    if-ne v0, v1, :cond_22d

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    const-wide/16 v31, 0x3e8

    div-long v29, v29, v31

    add-long v23, v23, v29

    .line 508
    :cond_22d
    :try_start_22d
    move-wide/from16 v0, v23

    invoke-virtual {v13, v0, v1, v12}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_232
    .catch Ljava/lang/RuntimeException; {:try_start_22d .. :try_end_232} :catch_234

    goto/16 :goto_a

    .line 509
    :catch_234
    move-exception v6

    .line 510
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 511
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 497
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v23           #timeValue:J
    :catch_251
    move-exception v6

    .line 498
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 499
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 521
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v25           #token:I
    :pswitch_26e
    const/4 v10, 0x0

    .line 522
    .local v10, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 525
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 528
    .local v11, fromToken:I
    const/16 v29, 0x80

    move/from16 v0, v29

    if-ne v0, v11, :cond_2ca

    .line 530
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    .line 531
    if-eqz v10, :cond_2ae

    .line 532
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 533
    .restart local v3       #address:[B
    if-eqz v3, :cond_2ae

    .line 534
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 535
    .restart local v22       #str:Ljava/lang/String;
    const-string v29, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 536
    .restart local v7       #endIndex:I
    if-lez v7, :cond_2a5

    .line 537
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 540
    :cond_2a5
    :try_start_2a5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_2ae
    .catch Ljava/lang/NullPointerException; {:try_start_2a5 .. :try_end_2ae} :catch_2c0

    .line 558
    .end local v3           #address:[B
    .end local v7           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :cond_2ae
    :goto_2ae
    const/16 v29, 0x89

    :try_start_2b0
    move/from16 v0, v29

    invoke-virtual {v13, v10, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_2b5
    .catch Ljava/lang/NullPointerException; {:try_start_2b0 .. :try_end_2b5} :catch_2b7
    .catch Ljava/lang/RuntimeException; {:try_start_2b0 .. :try_end_2b5} :catch_2f6

    goto/16 :goto_a

    .line 559
    :catch_2b7
    move-exception v6

    .line 560
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 541
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v3       #address:[B
    .restart local v7       #endIndex:I
    .restart local v22       #str:Ljava/lang/String;
    :catch_2c0
    move-exception v6

    .line 542
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 543
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 549
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v22           #str:Ljava/lang/String;
    :cond_2ca
    :try_start_2ca
    new-instance v10, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v10           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string/jumbo v29, "insert-address-token"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_2d8
    .catch Ljava/lang/NullPointerException; {:try_start_2ca .. :try_end_2d8} :catch_2d9

    .restart local v10       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2ae

    .line 551
    .end local v10           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_2d9
    move-exception v6

    .line 552
    .restart local v6       #e:Ljava/lang/NullPointerException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 553
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 561
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v10       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_2f6
    move-exception v6

    .line 562
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 563
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 570
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v10           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #fromToken:I
    :pswitch_313
    const/16 v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 571
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .line 573
    .local v16, messageClass:I
    const/16 v29, 0x80

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_3b4

    .line 576
    const/16 v29, 0x80

    move/from16 v0, v29

    move/from16 v1, v16

    if-ne v0, v1, :cond_34b

    .line 577
    :try_start_330
    const-string/jumbo v29, "personal"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x8a

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_340
    .catch Ljava/lang/NullPointerException; {:try_start_330 .. :try_end_340} :catch_342
    .catch Ljava/lang/RuntimeException; {:try_start_330 .. :try_end_340} :catch_364

    goto/16 :goto_a

    .line 593
    :catch_342
    move-exception v6

    .line 594
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 580
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_34b
    const/16 v29, 0x81

    move/from16 v0, v29

    move/from16 v1, v16

    if-ne v0, v1, :cond_381

    .line 581
    :try_start_353
    const-string v29, "advertisement"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x8a

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_362
    .catch Ljava/lang/NullPointerException; {:try_start_353 .. :try_end_362} :catch_342
    .catch Ljava/lang/RuntimeException; {:try_start_353 .. :try_end_362} :catch_364

    goto/16 :goto_a

    .line 595
    :catch_364
    move-exception v6

    .line 596
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 597
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 584
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_381
    const/16 v29, 0x82

    move/from16 v0, v29

    move/from16 v1, v16

    if-ne v0, v1, :cond_39b

    .line 585
    :try_start_389
    const-string/jumbo v29, "informational"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x8a

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_a

    .line 588
    :cond_39b
    const/16 v29, 0x83

    move/from16 v0, v29

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 589
    const-string v29, "auto"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x8a

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3b2
    .catch Ljava/lang/NullPointerException; {:try_start_389 .. :try_end_3b2} :catch_342
    .catch Ljava/lang/RuntimeException; {:try_start_389 .. :try_end_3b2} :catch_364

    goto/16 :goto_a

    .line 601
    :cond_3b4
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 602
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    .line 603
    .local v17, messageClassString:[B
    if-eqz v17, :cond_a

    .line 605
    const/16 v29, 0x8a

    :try_start_3c5
    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3cc
    .catch Ljava/lang/NullPointerException; {:try_start_3c5 .. :try_end_3cc} :catch_3ce
    .catch Ljava/lang/RuntimeException; {:try_start_3c5 .. :try_end_3cc} :catch_3d7

    goto/16 :goto_a

    .line 606
    :catch_3ce
    move-exception v6

    .line 607
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 608
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_3d7
    move-exception v6

    .line 609
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 610
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 618
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v16           #messageClass:I
    .end local v17           #messageClassString:[B
    :pswitch_3f4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v28

    .line 621
    .local v28, version:I
    const/16 v29, 0x8d

    :try_start_3fa
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_401
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3fa .. :try_end_401} :catch_403
    .catch Ljava/lang/RuntimeException; {:try_start_3fa .. :try_end_401} :catch_42d

    goto/16 :goto_a

    .line 622
    :catch_403
    move-exception v6

    .line 623
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Set invalid Octet value: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " into the header filed: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 625
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 626
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_42d
    move-exception v6

    .line 627
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Octet header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 628
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 637
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v28           #version:I
    :pswitch_44a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 641
    :try_start_44d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_450
    .catch Ljava/lang/RuntimeException; {:try_start_44d .. :try_end_450} :catch_46a

    .line 648
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v21

    .line 650
    .local v21, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v21, :cond_a

    .line 652
    const/16 v29, 0xa0

    :try_start_458
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_45f
    .catch Ljava/lang/NullPointerException; {:try_start_458 .. :try_end_45f} :catch_461
    .catch Ljava/lang/RuntimeException; {:try_start_458 .. :try_end_45f} :catch_486

    goto/16 :goto_a

    .line 654
    :catch_461
    move-exception v6

    .line 655
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 642
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v21           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_46a
    move-exception v6

    .line 643
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is not Integer-Value"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 644
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 656
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v21       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_486
    move-exception v6

    .line 657
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 658
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 668
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v21           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_4a3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 672
    :try_start_4a6
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4a9
    .catch Ljava/lang/RuntimeException; {:try_start_4a6 .. :try_end_4a9} :catch_4d5

    .line 680
    :try_start_4a9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v19

    .line 681
    .local v19, perviouslySentDate:J
    const/16 v29, 0xa1

    move-wide/from16 v0, v19

    move/from16 v2, v29

    invoke-virtual {v13, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_4b6
    .catch Ljava/lang/RuntimeException; {:try_start_4a9 .. :try_end_4b6} :catch_4b8

    goto/16 :goto_a

    .line 683
    .end local v19           #perviouslySentDate:J
    :catch_4b8
    move-exception v6

    .line 684
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Long-Integer header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 685
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 673
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_4d5
    move-exception v6

    .line 674
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is not Integer-Value"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 675
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 698
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_4f1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 701
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 704
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_a

    .line 717
    :pswitch_4fc
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 720
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 724
    :try_start_502
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_505
    .catch Ljava/lang/RuntimeException; {:try_start_502 .. :try_end_505} :catch_507

    goto/16 :goto_a

    .line 725
    :catch_507
    move-exception v6

    .line 726
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " is not Integer-Value"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 727
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 738
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_523
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/util/HashMap;)[B

    goto/16 :goto_a

    .line 746
    :pswitch_532
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 751
    .local v15, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 753
    .local v9, extramap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 755
    .local v5, contentType:[B
    sget-short v29, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v30, 0x78

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_55b

    sget-short v29, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v30, 0x59

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_55b

    sget-short v29, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v30, 0x1b

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5ed

    .line 758
    :cond_55b
    move-object/from16 v0, p1

    invoke-static {v0, v15, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/util/HashMap;)[B

    move-result-object v5

    .line 764
    :goto_561
    if-eqz v5, :cond_56a

    .line 766
    const/16 v29, 0x84

    :try_start_565
    move/from16 v0, v29

    invoke-virtual {v13, v5, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_56a
    .catch Ljava/lang/NullPointerException; {:try_start_565 .. :try_end_56a} :catch_5f9
    .catch Ljava/lang/RuntimeException; {:try_start_565 .. :try_end_56a} :catch_602

    .line 776
    :cond_56a
    :goto_56a
    const/16 v29, 0x99

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    check-cast v29, [B

    sput-object v29, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 779
    const/16 v29, 0x83

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    check-cast v29, [B

    sput-object v29, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 781
    const/16 v29, 0x81

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    sput-object v29, Lcom/google/android/mms/pdu/PduParser;->mCharsetParam:Ljava/lang/Integer;

    .line 783
    sget-short v29, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v30, 0x78

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_5bc

    sget-short v29, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v30, 0x59

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_5bc

    sget-short v29, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v30, 0x1b

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5ea

    .line 788
    :cond_5bc
    const-string v29, "Application-ID"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    move-object/from16 v8, v29

    check-cast v8, [B

    .line 789
    .local v8, extraParam:[B
    if-eqz v8, :cond_5d3

    .line 791
    :try_start_5cc
    const-string v29, "Application-ID"

    move-object/from16 v0, v29

    invoke-virtual {v13, v8, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setExtraTextString([BLjava/lang/String;)V
    :try_end_5d3
    .catch Ljava/lang/NullPointerException; {:try_start_5cc .. :try_end_5d3} :catch_61f
    .catch Ljava/lang/RuntimeException; {:try_start_5cc .. :try_end_5d3} :catch_627

    .line 802
    :cond_5d3
    :goto_5d3
    const-string v29, "Reply-To-Application-ID"

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    move-object/from16 v8, v29

    check-cast v8, [B

    .line 803
    if-eqz v8, :cond_5ea

    .line 805
    :try_start_5e3
    const-string v29, "Reply-To-Application-ID"

    move-object/from16 v0, v29

    invoke-virtual {v13, v8, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setExtraTextString([BLjava/lang/String;)V
    :try_end_5ea
    .catch Ljava/lang/NullPointerException; {:try_start_5e3 .. :try_end_5ea} :catch_644
    .catch Ljava/lang/RuntimeException; {:try_start_5e3 .. :try_end_5ea} :catch_64c

    .line 815
    .end local v8           #extraParam:[B
    :cond_5ea
    :goto_5ea
    const/4 v14, 0x0

    .line 816
    goto/16 :goto_a

    .line 761
    :cond_5ed
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v15, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/util/HashMap;)[B

    move-result-object v5

    goto/16 :goto_561

    .line 767
    :catch_5f9
    move-exception v6

    .line 768
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_56a

    .line 769
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_602
    move-exception v6

    .line 770
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 771
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 792
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v8       #extraParam:[B
    :catch_61f
    move-exception v6

    .line 793
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_5d3

    .line 794
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_627
    move-exception v6

    .line 795
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 796
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 806
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_644
    move-exception v6

    .line 807
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v29, "null pointer error!"

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_5ea

    .line 808
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_64c
    move-exception v6

    .line 809
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "is not Text-String header field!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 810
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 277
    nop

    :pswitch_data_66a
    .packed-switch 0x81
        :pswitch_1a5
        :pswitch_1a5
        :pswitch_139
        :pswitch_532
        :pswitch_e9
        :pswitch_97
        :pswitch_210
        :pswitch_210
        :pswitch_26e
        :pswitch_313
        :pswitch_139
        :pswitch_42
        :pswitch_3f4
        :pswitch_e9
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_172
        :pswitch_97
        :pswitch_97
        :pswitch_172
        :pswitch_1a5
        :pswitch_139
        :pswitch_97
        :pswitch_172
        :pswitch_97
        :pswitch_97
        :pswitch_210
        :pswitch_139
        :pswitch_e9
        :pswitch_44a
        :pswitch_4a3
        :pswitch_97
        :pswitch_97
        :pswitch_4f1
        :pswitch_97
        :pswitch_172
        :pswitch_97
        :pswitch_3c
        :pswitch_97
        :pswitch_4fc
        :pswitch_97
        :pswitch_4fc
        :pswitch_111
        :pswitch_3c
        :pswitch_111
        :pswitch_3c
        :pswitch_97
        :pswitch_523
        :pswitch_111
        :pswitch_97
        :pswitch_172
        :pswitch_172
        :pswitch_139
        :pswitch_139
        :pswitch_139
        :pswitch_97
        :pswitch_97
        :pswitch_97
        :pswitch_139
        :pswitch_139
        :pswitch_97
    .end packed-switch

    .line 281
    :pswitch_data_6ec
    .packed-switch 0x89
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
    .end packed-switch
.end method
