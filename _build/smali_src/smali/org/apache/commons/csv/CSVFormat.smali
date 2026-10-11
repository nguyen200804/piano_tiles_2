.class public final Lorg/apache/commons/csv/CSVFormat;
.super Ljava/lang/Object;
.source "CSVFormat.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/csv/CSVFormat$Predefined;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/apache/commons/csv/CSVFormat;

.field public static final EXCEL:Lorg/apache/commons/csv/CSVFormat;

.field public static final INFORMIX_UNLOAD:Lorg/apache/commons/csv/CSVFormat;

.field public static final INFORMIX_UNLOAD_CSV:Lorg/apache/commons/csv/CSVFormat;

.field public static final MYSQL:Lorg/apache/commons/csv/CSVFormat;

.field public static final RFC4180:Lorg/apache/commons/csv/CSVFormat;

.field public static final TDF:Lorg/apache/commons/csv/CSVFormat;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final allowMissingColumnNames:Z

.field private final commentMarker:Ljava/lang/Character;

.field private final delimiter:C

.field private final escapeCharacter:Ljava/lang/Character;

.field private final header:[Ljava/lang/String;

.field private final headerComments:[Ljava/lang/String;

.field private final ignoreEmptyLines:Z

.field private final ignoreHeaderCase:Z

.field private final ignoreSurroundingSpaces:Z

.field private final nullString:Ljava/lang/String;

.field private final quoteCharacter:Ljava/lang/Character;

.field private final quoteMode:Lorg/apache/commons/csv/QuoteMode;

.field private final recordSeparator:Ljava/lang/String;

.field private final skipHeaderRecord:Z

.field private final trailingDelimiter:Z

.field private final trim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 228
    new-instance v0, Lorg/apache/commons/csv/CSVFormat;

    const/16 v1, 0x2c

    sget-object v2, Lorg/apache/commons/csv/Constants;->DOUBLE_QUOTE_CHAR:Ljava/lang/Character;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "\r\n"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    sput-object v0, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    .line 260
    sget-object v0, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVFormat;->withAllowMissingColumnNames()Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/csv/CSVFormat;->EXCEL:Lorg/apache/commons/csv/CSVFormat;

    .line 286
    sget-object v0, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withEscape(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/csv/Constants;->DOUBLE_QUOTE_CHAR:Ljava/lang/Character;

    .line 287
    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withQuote(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withRecordSeparator(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/csv/CSVFormat;->INFORMIX_UNLOAD:Lorg/apache/commons/csv/CSVFormat;

    .line 312
    sget-object v0, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/csv/Constants;->DOUBLE_QUOTE_CHAR:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withQuote(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    const/16 v1, 0xa

    .line 313
    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withRecordSeparator(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/csv/CSVFormat;->INFORMIX_UNLOAD_CSV:Lorg/apache/commons/csv/CSVFormat;

    .line 339
    sget-object v0, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withEscape(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    const/4 v1, 0x0

    .line 340
    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withQuote(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withRecordSeparator(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    const-string v1, "\\N"

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withNullString(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/csv/CSVFormat;->MYSQL:Lorg/apache/commons/csv/CSVFormat;

    .line 357
    sget-object v0, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/csv/CSVFormat;->RFC4180:Lorg/apache/commons/csv/CSVFormat;

    .line 376
    sget-object v0, Lorg/apache/commons/csv/CSVFormat;->DEFAULT:Lorg/apache/commons/csv/CSVFormat;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/apache/commons/csv/CSVFormat;->withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVFormat;->withIgnoreSurroundingSpaces()Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/csv/CSVFormat;->TDF:Lorg/apache/commons/csv/CSVFormat;

    return-void
.end method

.method private constructor <init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V
    .locals 2
    .param p1, "delimiter"    # C
    .param p2, "quoteChar"    # Ljava/lang/Character;
    .param p3, "quoteMode"    # Lorg/apache/commons/csv/QuoteMode;
    .param p4, "commentStart"    # Ljava/lang/Character;
    .param p5, "escape"    # Ljava/lang/Character;
    .param p6, "ignoreSurroundingSpaces"    # Z
    .param p7, "ignoreEmptyLines"    # Z
    .param p8, "recordSeparator"    # Ljava/lang/String;
    .param p9, "nullString"    # Ljava/lang/String;
    .param p10, "headerComments"    # [Ljava/lang/Object;
    .param p11, "header"    # [Ljava/lang/String;
    .param p12, "skipHeaderRecord"    # Z
    .param p13, "allowMissingColumnNames"    # Z
    .param p14, "ignoreHeaderCase"    # Z
    .param p15, "trim"    # Z
    .param p16, "trailingDelimiter"    # Z

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-char p1, p0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    .line 516
    iput-object p2, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    .line 517
    iput-object p3, p0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    .line 518
    iput-object p4, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    .line 519
    iput-object p5, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    .line 520
    iput-boolean p6, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    .line 521
    iput-boolean p13, p0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    .line 522
    iput-boolean p7, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    .line 523
    iput-object p8, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    .line 524
    iput-object p9, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    .line 525
    invoke-direct {p0, p10}, Lorg/apache/commons/csv/CSVFormat;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    .line 526
    if-nez p11, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    .line 527
    iput-boolean p12, p0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    .line 528
    move/from16 v0, p14

    iput-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    .line 529
    move/from16 v0, p16

    iput-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    .line 530
    move/from16 v0, p15

    iput-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    .line 531
    invoke-direct {p0}, Lorg/apache/commons/csv/CSVFormat;->validate()V

    .line 532
    return-void

    .line 526
    :cond_0
    invoke-virtual {p11}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static isLineBreak(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 387
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLineBreak(Ljava/lang/Character;)Z
    .locals 1
    .param p0, "c"    # Ljava/lang/Character;

    .prologue
    .line 399
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/csv/CSVFormat;->isLineBreak(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newFormat(C)Lorg/apache/commons/csv/CSVFormat;
    .locals 17
    .param p0, "delimiter"    # C

    .prologue
    .line 423
    new-instance v0, Lorg/apache/commons/csv/CSVFormat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v0
.end method

.method private print(Ljava/lang/Object;Ljava/lang/CharSequence;IILjava/lang/Appendable;Z)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "out"    # Ljava/lang/Appendable;
    .param p6, "newRecord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 895
    if-nez p6, :cond_0

    .line 896
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getDelimiter()C

    move-result v0

    invoke-interface {p5, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 898
    :cond_0
    if-nez p1, :cond_1

    .line 899
    invoke-interface {p5, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 908
    :goto_0
    return-void

    .line 900
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->isQuoteCharacterSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/csv/CSVFormat;->printAndQuote(Ljava/lang/Object;Ljava/lang/CharSequence;IILjava/lang/Appendable;Z)V

    goto :goto_0

    .line 903
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->isEscapeCharacterSet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 904
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/commons/csv/CSVFormat;->printAndEscape(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    goto :goto_0

    .line 906
    :cond_3
    add-int v0, p3, p4

    invoke-interface {p5, p2, p3, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method private printAndEscape(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xa

    .line 915
    .line 917
    add-int v2, p2, p3

    .line 919
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getDelimiter()C

    move-result v3

    .line 920
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getEscapeCharacter()Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v4

    move v1, p2

    .line 922
    .end local p2    # "offset":I
    :goto_0
    if-ge p2, v2, :cond_4

    .line 923
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 924
    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v4, :cond_6

    .line 926
    :cond_0
    if-le p2, v1, :cond_1

    .line 927
    invoke-interface {p4, p1, v1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 929
    :cond_1
    if-ne v0, v5, :cond_3

    .line 930
    const/16 v0, 0x6e

    .line 935
    :cond_2
    :goto_1
    invoke-interface {p4, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 936
    invoke-interface {p4, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 938
    add-int/lit8 v0, p2, 0x1

    .line 941
    :goto_2
    add-int/lit8 p2, p2, 0x1

    move v1, v0

    .line 942
    goto :goto_0

    .line 931
    :cond_3
    if-ne v0, v6, :cond_2

    .line 932
    const/16 v0, 0x72

    goto :goto_1

    .line 945
    :cond_4
    if-le p2, v1, :cond_5

    .line 946
    invoke-interface {p4, p1, v1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 948
    :cond_5
    return-void

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private printAndQuote(Ljava/lang/Object;Ljava/lang/CharSequence;IILjava/lang/Appendable;Z)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "out"    # Ljava/lang/Appendable;
    .param p6, "newRecord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 956
    .line 959
    add-int v3, p3, p4

    .line 961
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getDelimiter()C

    move-result v4

    .line 962
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getQuoteCharacter()Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v5

    .line 964
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getQuoteMode()Lorg/apache/commons/csv/QuoteMode;

    move-result-object v0

    .line 965
    if-nez v0, :cond_0

    .line 966
    sget-object v0, Lorg/apache/commons/csv/QuoteMode;->MINIMAL:Lorg/apache/commons/csv/QuoteMode;

    .line 968
    :cond_0
    sget-object v6, Lorg/apache/commons/csv/CSVFormat$1;->$SwitchMap$org$apache$commons$csv$QuoteMode:[I

    invoke-virtual {v0}, Lorg/apache/commons/csv/QuoteMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1028
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Quote value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move v0, v1

    move v1, p3

    .line 1031
    :cond_1
    :goto_0
    if-nez v0, :cond_b

    .line 1033
    invoke-interface {p5, p2, p3, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1059
    :goto_1
    return-void

    .line 973
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    move v1, p3

    .line 974
    goto :goto_0

    :cond_2
    move v0, v2

    .line 973
    goto :goto_2

    .line 977
    :pswitch_2
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/commons/csv/CSVFormat;->printAndEscape(Ljava/lang/CharSequence;IILjava/lang/Appendable;)V

    goto :goto_1

    .line 980
    :pswitch_3
    if-gtz p4, :cond_3

    .line 985
    if-eqz p6, :cond_10

    move v0, v1

    move v1, p3

    .line 1021
    :goto_3
    if-nez v0, :cond_1

    .line 1023
    invoke-interface {p5, p2, p3, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    goto :goto_1

    .line 989
    :cond_3
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 992
    if-eqz p6, :cond_7

    const/16 v6, 0x30

    if-lt v0, v6, :cond_6

    const/16 v6, 0x39

    if-le v0, v6, :cond_4

    const/16 v6, 0x41

    if-lt v0, v6, :cond_6

    :cond_4
    const/16 v6, 0x5a

    if-le v0, v6, :cond_5

    const/16 v6, 0x61

    if-lt v0, v6, :cond_6

    :cond_5
    const/16 v6, 0x7a

    if-le v0, v6, :cond_7

    :cond_6
    move v0, v1

    move v1, p3

    .line 993
    goto :goto_3

    .line 994
    :cond_7
    const/16 v6, 0x23

    if-gt v0, v6, :cond_f

    move v0, v1

    move v1, p3

    .line 998
    goto :goto_3

    .line 1006
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 1000
    :goto_4
    if-ge v0, v3, :cond_a

    .line 1001
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1002
    const/16 v7, 0xa

    if-eq v6, v7, :cond_9

    const/16 v7, 0xd

    if-eq v6, v7, :cond_9

    if-eq v6, v5, :cond_9

    if-ne v6, v4, :cond_8

    :cond_9
    move v2, v1

    .line 1009
    :cond_a
    if-nez v2, :cond_e

    .line 1010
    add-int/lit8 v0, v3, -0x1

    .line 1011
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1014
    const/16 v6, 0x20

    if-gt v4, v6, :cond_e

    move v8, v0

    move v0, v1

    move v1, v8

    .line 1015
    goto :goto_3

    .line 1038
    :cond_b
    invoke-interface {p5, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move v0, p3

    .line 1042
    :goto_5
    if-ge v1, v3, :cond_d

    .line 1043
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1044
    if-ne v2, v5, :cond_c

    .line 1048
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p5, p2, v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move v0, v1

    .line 1053
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 1054
    goto :goto_5

    .line 1057
    :cond_d
    invoke-interface {p5, p2, v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1058
    invoke-interface {p5, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/16 :goto_1

    :cond_e
    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_f
    move v0, p3

    goto :goto_4

    :cond_10
    move v1, p3

    move v0, v2

    goto :goto_3

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1149
    if-nez p1, :cond_0

    .line 1157
    :goto_0
    return-object v2

    .line 1152
    :cond_0
    array-length v0, p1

    new-array v3, v0, [Ljava/lang/String;

    .line 1153
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1154
    aget-object v1, p1, v0

    .line 1155
    if-nez v1, :cond_1

    move-object v1, v2

    :goto_2
    aput-object v1, v3, v0

    .line 1153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1155
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v2, v3

    .line 1157
    goto :goto_0
.end method

.method private trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    .line 1161
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1162
    check-cast p1, Ljava/lang/String;

    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1174
    :cond_0
    :goto_0
    return-object p1

    .line 1164
    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1166
    const/4 v0, 0x0

    move v2, v0

    .line 1168
    :goto_1
    if-ge v2, v1, :cond_4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-gt v0, v4, :cond_4

    .line 1169
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1171
    :goto_2
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_2

    .line 1172
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1174
    :cond_2
    if-gtz v2, :cond_3

    if-ge v0, v1, :cond_0

    :cond_3
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private validate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1183
    iget-char v0, p0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    invoke-static {v0}, Lorg/apache/commons/csv/CSVFormat;->isLineBreak(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The delimiter cannot be a line break"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1187
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_1

    iget-char v0, p0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The quoteChar character and the delimiter cannot be the same (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1192
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_2

    iget-char v0, p0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The escape character and the delimiter cannot be the same (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    if-eqz v0, :cond_3

    iget-char v0, p0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The comment start character and the delimiter cannot be the same (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1202
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The comment start character and the quoteChar cannot be the same (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1207
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The comment start and the escape character cannot be the same (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    sget-object v1, Lorg/apache/commons/csv/QuoteMode;->NONE:Lorg/apache/commons/csv/QuoteMode;

    if-ne v0, v1, :cond_6

    .line 1213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No quotes mode set but no escape character is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1217
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1218
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1219
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_8

    aget-object v4, v2, v0

    .line 1220
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The header contains a duplicate entry: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    .line 1222
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1219
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1226
    :cond_8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;
    .locals 1
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-static {p0}, Lorg/apache/commons/csv/CSVFormat$Predefined;->valueOf(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat$Predefined;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVFormat$Predefined;->getFormat()Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 536
    if-ne p0, p1, :cond_1

    .line 600
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 539
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 540
    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 543
    goto :goto_0

    .line 546
    :cond_3
    check-cast p1, Lorg/apache/commons/csv/CSVFormat;

    .line 547
    .end local p1    # "obj":Ljava/lang/Object;
    iget-char v2, p0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    iget-char v3, p1, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 548
    goto :goto_0

    .line 550
    :cond_4
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    iget-object v3, p1, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 551
    goto :goto_0

    .line 553
    :cond_5
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    if-nez v2, :cond_6

    .line 554
    iget-object v2, p1, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    if-eqz v2, :cond_7

    move v0, v1

    .line 555
    goto :goto_0

    .line 557
    :cond_6
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    iget-object v3, p1, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 558
    goto :goto_0

    .line 560
    :cond_7
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    if-nez v2, :cond_8

    .line 561
    iget-object v2, p1, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    if-eqz v2, :cond_9

    move v0, v1

    .line 562
    goto :goto_0

    .line 564
    :cond_8
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    iget-object v3, p1, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 565
    goto :goto_0

    .line 567
    :cond_9
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    if-nez v2, :cond_a

    .line 568
    iget-object v2, p1, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    if-eqz v2, :cond_b

    move v0, v1

    .line 569
    goto :goto_0

    .line 571
    :cond_a
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    iget-object v3, p1, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    invoke-virtual {v2, v3}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 572
    goto :goto_0

    .line 574
    :cond_b
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 575
    iget-object v2, p1, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    .line 576
    goto :goto_0

    .line 578
    :cond_c
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 579
    goto :goto_0

    .line 581
    :cond_d
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 582
    goto/16 :goto_0

    .line 584
    :cond_e
    iget-boolean v2, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    iget-boolean v3, p1, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    if-eq v2, v3, :cond_f

    move v0, v1

    .line 585
    goto/16 :goto_0

    .line 587
    :cond_f
    iget-boolean v2, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    iget-boolean v3, p1, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    if-eq v2, v3, :cond_10

    move v0, v1

    .line 588
    goto/16 :goto_0

    .line 590
    :cond_10
    iget-boolean v2, p0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    iget-boolean v3, p1, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 591
    goto/16 :goto_0

    .line 593
    :cond_11
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 594
    iget-object v2, p1, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 595
    goto/16 :goto_0

    .line 597
    :cond_12
    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 598
    goto/16 :goto_0
.end method

.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 611
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 613
    :try_start_0
    new-instance v1, Lorg/apache/commons/csv/CSVPrinter;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/csv/CSVPrinter;-><init>(Ljava/lang/Appendable;Lorg/apache/commons/csv/CSVFormat;)V

    invoke-virtual {v1, p1}, Lorg/apache/commons/csv/CSVPrinter;->printRecord([Ljava/lang/Object;)V

    .line 614
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 615
    :catch_0
    move-exception v0

    .line 617
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllowMissingColumnNames()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    return v0
.end method

.method public getCommentMarker()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    return-object v0
.end method

.method public getDelimiter()C
    .locals 1

    .prologue
    .line 646
    iget-char v0, p0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    return v0
.end method

.method public getEscapeCharacter()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    return-object v0
.end method

.method public getHeader()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeaderComments()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIgnoreEmptyLines()Z
    .locals 1

    .prologue
    .line 683
    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    return v0
.end method

.method public getIgnoreHeaderCase()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    return v0
.end method

.method public getIgnoreSurroundingSpaces()Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    return v0
.end method

.method public getNullString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    return-object v0
.end method

.method public getQuoteCharacter()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    return-object v0
.end method

.method public getQuoteMode()Lorg/apache/commons/csv/QuoteMode;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    return-object v0
.end method

.method public getRecordSeparator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipHeaderRecord()Z
    .locals 1

    .prologue
    .line 752
    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    return v0
.end method

.method public getTrailingDelimiter()Z
    .locals 1

    .prologue
    .line 762
    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    return v0
.end method

.method public getTrim()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    .line 776
    .line 779
    iget-char v0, p0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    add-int/lit8 v0, v0, 0x1f

    .line 780
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v4

    .line 781
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 782
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    .line 783
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    .line 784
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v4

    .line 785
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    add-int/2addr v0, v4

    .line 786
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v0, v4

    .line 787
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_7
    add-int/2addr v0, v4

    .line 788
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    if-eqz v4, :cond_8

    :goto_8
    add-int/2addr v0, v2

    .line 789
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    if-nez v2, :cond_9

    :goto_9
    add-int/2addr v0, v1

    .line 790
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 791
    return v0

    .line 780
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    invoke-virtual {v0}, Lorg/apache/commons/csv/QuoteMode;->hashCode()I

    move-result v0

    goto :goto_0

    .line 781
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->hashCode()I

    move-result v0

    goto :goto_1

    .line 782
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->hashCode()I

    move-result v0

    goto :goto_2

    .line 783
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->hashCode()I

    move-result v0

    goto :goto_3

    .line 784
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v3

    .line 785
    goto :goto_5

    :cond_6
    move v0, v3

    .line 786
    goto :goto_6

    :cond_7
    move v0, v3

    .line 787
    goto :goto_7

    :cond_8
    move v2, v3

    .line 788
    goto :goto_8

    .line 789
    :cond_9
    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9
.end method

.method public isCommentMarkerSet()Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEscapeCharacterSet()Z
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNullStringSet()Z
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQuoteCharacterSet()Z
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/Reader;)Lorg/apache/commons/csv/CSVParser;
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    new-instance v0, Lorg/apache/commons/csv/CSVParser;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/csv/CSVParser;-><init>(Ljava/io/Reader;Lorg/apache/commons/csv/CSVFormat;)V

    return-object v0
.end method

.method public print(Ljava/lang/Appendable;)Lorg/apache/commons/csv/CSVPrinter;
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    new-instance v0, Lorg/apache/commons/csv/CSVPrinter;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/csv/CSVPrinter;-><init>(Ljava/lang/Appendable;Lorg/apache/commons/csv/CSVFormat;)V

    return-object v0
.end method

.method public print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/lang/Appendable;
    .param p3, "newRecord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 884
    if-nez p1, :cond_1

    .line 885
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 889
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getTrim()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 890
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/CharSequence;IILjava/lang/Appendable;Z)V

    .line 891
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    goto :goto_0

    .line 887
    :cond_1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 889
    goto :goto_1
.end method

.method public varargs printRecord(Ljava/lang/Appendable;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1097
    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 1098
    aget-object v3, p2, v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v3, p1, v2}, Lorg/apache/commons/csv/CSVFormat;->print(Ljava/lang/Object;Ljava/lang/Appendable;Z)V

    .line 1097
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1098
    goto :goto_1

    .line 1100
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/csv/CSVFormat;->println(Ljava/lang/Appendable;)V

    .line 1101
    return-void
.end method

.method public println(Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getTrailingDelimiter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getDelimiter()C

    move-result v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1074
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1077
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3e

    const/16 v3, 0x20

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1106
    const-string v1, "Delimiter=<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->isEscapeCharacterSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1109
    const-string v1, "Escape=<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1111
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->isQuoteCharacterSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1113
    const-string v1, "QuoteChar=<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1115
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->isCommentMarkerSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    const-string v1, "CommentStart=<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1119
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->isNullStringSet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1121
    const-string v1, "NullString=<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1125
    const-string v1, "RecordSeparator=<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1127
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getIgnoreEmptyLines()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1128
    const-string v1, " EmptyLines:ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getIgnoreSurroundingSpaces()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1131
    const-string v1, " SurroundingSpaces:ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/csv/CSVFormat;->getIgnoreHeaderCase()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1134
    const-string v1, " IgnoreHeaderCase:ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    :cond_7
    const-string v1, " SkipHeaderRecord:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1137
    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1139
    const-string v1, "HeaderComments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1143
    const-string v1, "Header:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAllowMissingColumnNames()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .prologue
    .line 1236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withAllowMissingColumnNames(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withAllowMissingColumnNames(Z)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "allowMissingColumnNames"    # Z

    .prologue
    .line 1248
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move/from16 v14, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withCommentMarker(C)Lorg/apache/commons/csv/CSVFormat;
    .locals 1
    .param p1, "commentMarker"    # C

    .prologue
    .line 1265
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withCommentMarker(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withCommentMarker(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "commentMarker"    # Ljava/lang/Character;

    .prologue
    .line 1280
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/csv/CSVFormat;->isLineBreak(Ljava/lang/Character;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The comment start marker character cannot be a line break"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1283
    :cond_0
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withDelimiter(C)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "delimiter"    # C

    .prologue
    .line 1298
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/csv/CSVFormat;->isLineBreak(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The delimiter cannot be a line break"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1301
    :cond_0
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withEscape(C)Lorg/apache/commons/csv/CSVFormat;
    .locals 1
    .param p1, "escape"    # C

    .prologue
    .line 1316
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withEscape(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withEscape(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "escape"    # Ljava/lang/Character;

    .prologue
    .line 1329
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/csv/CSVFormat;->isLineBreak(Ljava/lang/Character;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The escape character cannot be a line break"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1332
    :cond_0
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withFirstRecordAsHeader()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .prologue
    .line 1354
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/csv/CSVFormat;->withSkipHeaderRecord()Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withHeader(Ljava/lang/Class;)Lorg/apache/commons/csv/CSVFormat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Lorg/apache/commons/csv/CSVFormat;"
        }
    .end annotation

    .prologue
    .line 1384
    .local p1, "headerEnum":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum<*>;>;"
    const/4 v0, 0x0

    .line 1385
    if-eqz p1, :cond_1

    .line 1386
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 1387
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    .line 1388
    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1389
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 1392
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withHeader(Ljava/sql/ResultSet;)Lorg/apache/commons/csv/CSVFormat;
    .locals 1
    .param p1, "resultSet"    # Ljava/sql/ResultSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1422
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withHeader(Ljava/sql/ResultSetMetaData;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withHeader(Ljava/sql/ResultSetMetaData;)Lorg/apache/commons/csv/CSVFormat;
    .locals 4
    .param p1, "metaData"    # Ljava/sql/ResultSetMetaData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1452
    const/4 v0, 0x0

    .line 1453
    if-eqz p1, :cond_0

    .line 1454
    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    .line 1455
    new-array v0, v2, [Ljava/lang/String;

    .line 1456
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1457
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1460
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public varargs withHeader([Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "header"    # [Ljava/lang/String;

    .prologue
    .line 1487
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public varargs withHeaderComments([Ljava/lang/Object;)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "headerComments"    # [Ljava/lang/Object;

    .prologue
    .line 1508
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withIgnoreEmptyLines()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .prologue
    .line 1521
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withIgnoreEmptyLines(Z)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "ignoreEmptyLines"    # Z

    .prologue
    .line 1533
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move/from16 v8, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withIgnoreHeaderCase()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .prologue
    .line 1546
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withIgnoreHeaderCase(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withIgnoreHeaderCase(Z)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "ignoreHeaderCase"    # Z

    .prologue
    .line 1559
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move/from16 v15, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withIgnoreSurroundingSpaces()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .prologue
    .line 1572
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withIgnoreSurroundingSpaces(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withIgnoreSurroundingSpaces(Z)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "ignoreSurroundingSpaces"    # Z

    .prologue
    .line 1584
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move/from16 v7, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withNullString(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "nullString"    # Ljava/lang/String;

    .prologue
    .line 1603
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withQuote(C)Lorg/apache/commons/csv/CSVFormat;
    .locals 1
    .param p1, "quoteChar"    # C

    .prologue
    .line 1618
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withQuote(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withQuote(Ljava/lang/Character;)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "quoteChar"    # Ljava/lang/Character;

    .prologue
    .line 1631
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/csv/CSVFormat;->isLineBreak(Ljava/lang/Character;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1632
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The quoteChar cannot be a line break"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1634
    :cond_0
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withQuoteMode(Lorg/apache/commons/csv/QuoteMode;)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "quoteModePolicy"    # Lorg/apache/commons/csv/QuoteMode;

    .prologue
    .line 1648
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withRecordSeparator(C)Lorg/apache/commons/csv/CSVFormat;
    .locals 1
    .param p1, "recordSeparator"    # C

    .prologue
    .line 1667
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withRecordSeparator(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withRecordSeparator(Ljava/lang/String;)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "recordSeparator"    # Ljava/lang/String;

    .prologue
    .line 1686
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withSkipHeaderRecord()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .prologue
    .line 1700
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withSkipHeaderRecord(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withSkipHeaderRecord(Z)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "skipHeaderRecord"    # Z

    .prologue
    .line 1713
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move/from16 v13, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withTrailingDelimiter()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .prologue
    .line 1725
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withTrailingDelimiter(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withTrailingDelimiter(Z)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "trailingDelimiter"    # Z

    .prologue
    .line 1738
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trim:Z

    move/from16 v16, v0

    move/from16 v17, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method

.method public withTrim()Lorg/apache/commons/csv/CSVFormat;
    .locals 1

    .prologue
    .line 1750
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/csv/CSVFormat;->withTrim(Z)Lorg/apache/commons/csv/CSVFormat;

    move-result-object v0

    return-object v0
.end method

.method public withTrim(Z)Lorg/apache/commons/csv/CSVFormat;
    .locals 18
    .param p1, "trim"    # Z

    .prologue
    .line 1763
    new-instance v1, Lorg/apache/commons/csv/CSVFormat;

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/commons/csv/CSVFormat;->delimiter:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/commons/csv/CSVFormat;->quoteCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/csv/CSVFormat;->quoteMode:Lorg/apache/commons/csv/QuoteMode;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/commons/csv/CSVFormat;->commentMarker:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/csv/CSVFormat;->escapeCharacter:Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreSurroundingSpaces:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreEmptyLines:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/csv/CSVFormat;->recordSeparator:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/csv/CSVFormat;->nullString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/csv/CSVFormat;->headerComments:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/csv/CSVFormat;->header:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/commons/csv/CSVFormat;->skipHeaderRecord:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/apache/commons/csv/CSVFormat;->allowMissingColumnNames:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/apache/commons/csv/CSVFormat;->ignoreHeaderCase:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/csv/CSVFormat;->trailingDelimiter:Z

    move/from16 v17, v0

    move/from16 v16, p1

    invoke-direct/range {v1 .. v17}, Lorg/apache/commons/csv/CSVFormat;-><init>(CLjava/lang/Character;Lorg/apache/commons/csv/QuoteMode;Ljava/lang/Character;Ljava/lang/Character;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;ZZZZZ)V

    return-object v1
.end method
