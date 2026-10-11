.class public final enum Lorg/apache/commons/csv/QuoteMode;
.super Ljava/lang/Enum;
.source "QuoteMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/csv/QuoteMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/csv/QuoteMode;

.field public static final enum ALL:Lorg/apache/commons/csv/QuoteMode;

.field public static final enum MINIMAL:Lorg/apache/commons/csv/QuoteMode;

.field public static final enum NONE:Lorg/apache/commons/csv/QuoteMode;

.field public static final enum NON_NUMERIC:Lorg/apache/commons/csv/QuoteMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lorg/apache/commons/csv/QuoteMode;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/csv/QuoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/csv/QuoteMode;->ALL:Lorg/apache/commons/csv/QuoteMode;

    .line 35
    new-instance v0, Lorg/apache/commons/csv/QuoteMode;

    const-string v1, "MINIMAL"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/csv/QuoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/csv/QuoteMode;->MINIMAL:Lorg/apache/commons/csv/QuoteMode;

    .line 40
    new-instance v0, Lorg/apache/commons/csv/QuoteMode;

    const-string v1, "NON_NUMERIC"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/csv/QuoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/csv/QuoteMode;->NON_NUMERIC:Lorg/apache/commons/csv/QuoteMode;

    .line 46
    new-instance v0, Lorg/apache/commons/csv/QuoteMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/csv/QuoteMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/csv/QuoteMode;->NONE:Lorg/apache/commons/csv/QuoteMode;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/csv/QuoteMode;

    sget-object v1, Lorg/apache/commons/csv/QuoteMode;->ALL:Lorg/apache/commons/csv/QuoteMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/csv/QuoteMode;->MINIMAL:Lorg/apache/commons/csv/QuoteMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/csv/QuoteMode;->NON_NUMERIC:Lorg/apache/commons/csv/QuoteMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/csv/QuoteMode;->NONE:Lorg/apache/commons/csv/QuoteMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/commons/csv/QuoteMode;->$VALUES:[Lorg/apache/commons/csv/QuoteMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/csv/QuoteMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lorg/apache/commons/csv/QuoteMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/csv/QuoteMode;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/csv/QuoteMode;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/apache/commons/csv/QuoteMode;->$VALUES:[Lorg/apache/commons/csv/QuoteMode;

    invoke-virtual {v0}, [Lorg/apache/commons/csv/QuoteMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/csv/QuoteMode;

    return-object v0
.end method
