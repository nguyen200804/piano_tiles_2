.class public Lcom/cmplay/base/util/webview/encode/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmplay/base/util/webview/encode/Base64$Encoder;,
        Lcom/cmplay/base/util/webview/encode/Base64$Decoder;,
        Lcom/cmplay/base/util/webview/encode/Base64$Coder;
    }
.end annotation


# static fields
.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8

.field private static base64DecodeChars:[B

.field private static base64EncodeChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 742
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    .line 760
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cmplay/base/util/webview/encode/Base64;->base64DecodeChars:[B

    return-void

    .line 742
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    .line 760
    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3d

    const/4 v7, -0x1

    .line 819
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 820
    array-length v3, v2

    .line 821
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 822
    const/4 v0, 0x0

    .line 824
    :goto_0
    if-ge v0, v3, :cond_1

    .line 828
    :goto_1
    sget-object v5, Lcom/cmplay/base/util/webview/encode/Base64;->base64DecodeChars:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    aget-byte v5, v5, v0

    .line 830
    if-ge v1, v3, :cond_0

    if-eq v5, v7, :cond_b

    .line 831
    :cond_0
    if-ne v5, v7, :cond_3

    .line 870
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move v1, v0

    .line 837
    :cond_3
    sget-object v6, Lcom/cmplay/base/util/webview/encode/Base64;->base64DecodeChars:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    aget-byte v6, v6, v1

    .line 838
    if-ge v0, v3, :cond_4

    if-eq v6, v7, :cond_2

    .line 839
    :cond_4
    if-eq v6, v7, :cond_1

    .line 842
    shl-int/lit8 v1, v5, 0x2

    and-int/lit8 v5, v6, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 846
    :goto_3
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    .line 847
    if-ne v0, v8, :cond_5

    .line 848
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_2

    .line 850
    :cond_5
    sget-object v5, Lcom/cmplay/base/util/webview/encode/Base64;->base64DecodeChars:[B

    aget-byte v5, v5, v0

    .line 851
    if-ge v1, v3, :cond_6

    if-eq v5, v7, :cond_a

    .line 852
    :cond_6
    if-eq v5, v7, :cond_1

    .line 855
    and-int/lit8 v0, v6, 0xf

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v6, v5, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v0, v6

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 859
    :goto_4
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    .line 860
    if-ne v1, v8, :cond_7

    .line 861
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_2

    .line 863
    :cond_7
    sget-object v6, Lcom/cmplay/base/util/webview/encode/Base64;->base64DecodeChars:[B

    aget-byte v1, v6, v1

    .line 864
    if-ge v0, v3, :cond_8

    if-eq v1, v7, :cond_9

    .line 865
    :cond_8
    if-eq v1, v7, :cond_1

    .line 868
    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_9
    move v1, v0

    goto :goto_4

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_1
.end method

.method public static decode([BI)[B
    .locals 2
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .prologue
    .line 139
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/cmplay/base/util/webview/encode/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 4
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 166
    new-instance v1, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;-><init>(I[B)V

    .line 168
    const/4 v0, 0x1

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget v0, v1, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->op:I

    iget-object v2, v1, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->output:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 174
    iget-object v0, v1, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->output:[B

    .line 181
    :goto_0
    return-object v0

    .line 179
    :cond_1
    iget v0, v1, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->op:I

    new-array v0, v0, [B

    .line 180
    iget-object v2, v1, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->output:[B

    iget v1, v1, Lcom/cmplay/base/util/webview/encode/Base64$Decoder;->op:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B

    .prologue
    .line 780
    array-length v1, p0

    .line 781
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 782
    const/4 v0, 0x0

    .line 785
    :goto_0
    if-ge v0, v1, :cond_0

    .line 786
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    .line 787
    if-ne v3, v1, :cond_1

    .line 788
    sget-object v0, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    ushr-int/lit8 v1, v4, 0x2

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 789
    sget-object v0, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    and-int/lit8 v1, v4, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 790
    const-string v0, "=="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 812
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 793
    :cond_1
    add-int/lit8 v5, v3, 0x1

    aget-byte v0, p0, v3

    and-int/lit16 v3, v0, 0xff

    .line 794
    if-ne v5, v1, :cond_2

    .line 795
    sget-object v0, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    ushr-int/lit8 v1, v4, 0x2

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 796
    sget-object v0, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    and-int/lit8 v1, v4, 0x3

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v1, v4

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 799
    sget-object v0, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    and-int/lit8 v1, v3, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 800
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 803
    :cond_2
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 804
    sget-object v6, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    ushr-int/lit8 v7, v4, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 805
    sget-object v6, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    aget-char v4, v6, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 807
    sget-object v4, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v5, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 809
    sget-object v3, Lcom/cmplay/base/util/webview/encode/Base64;->base64EncodeChars:[C

    and-int/lit8 v4, v5, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
