.class final enum Lorg/apache/commons/csv/Token$Type;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/csv/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/csv/Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/csv/Token$Type;

.field public static final enum COMMENT:Lorg/apache/commons/csv/Token$Type;

.field public static final enum EOF:Lorg/apache/commons/csv/Token$Type;

.field public static final enum EORECORD:Lorg/apache/commons/csv/Token$Type;

.field public static final enum INVALID:Lorg/apache/commons/csv/Token$Type;

.field public static final enum TOKEN:Lorg/apache/commons/csv/Token$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lorg/apache/commons/csv/Token$Type;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/csv/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/csv/Token$Type;->INVALID:Lorg/apache/commons/csv/Token$Type;

    .line 39
    new-instance v0, Lorg/apache/commons/csv/Token$Type;

    const-string v1, "TOKEN"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/csv/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/csv/Token$Type;->TOKEN:Lorg/apache/commons/csv/Token$Type;

    .line 42
    new-instance v0, Lorg/apache/commons/csv/Token$Type;

    const-string v1, "EOF"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/csv/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/csv/Token$Type;->EOF:Lorg/apache/commons/csv/Token$Type;

    .line 45
    new-instance v0, Lorg/apache/commons/csv/Token$Type;

    const-string v1, "EORECORD"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/csv/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/csv/Token$Type;->EORECORD:Lorg/apache/commons/csv/Token$Type;

    .line 48
    new-instance v0, Lorg/apache/commons/csv/Token$Type;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/csv/Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/csv/Token$Type;->COMMENT:Lorg/apache/commons/csv/Token$Type;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/csv/Token$Type;

    sget-object v1, Lorg/apache/commons/csv/Token$Type;->INVALID:Lorg/apache/commons/csv/Token$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/csv/Token$Type;->TOKEN:Lorg/apache/commons/csv/Token$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/csv/Token$Type;->EOF:Lorg/apache/commons/csv/Token$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/csv/Token$Type;->EORECORD:Lorg/apache/commons/csv/Token$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/csv/Token$Type;->COMMENT:Lorg/apache/commons/csv/Token$Type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/commons/csv/Token$Type;->$VALUES:[Lorg/apache/commons/csv/Token$Type;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/csv/Token$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lorg/apache/commons/csv/Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/csv/Token$Type;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/csv/Token$Type;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/commons/csv/Token$Type;->$VALUES:[Lorg/apache/commons/csv/Token$Type;

    invoke-virtual {v0}, [Lorg/apache/commons/csv/Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/csv/Token$Type;

    return-object v0
.end method
