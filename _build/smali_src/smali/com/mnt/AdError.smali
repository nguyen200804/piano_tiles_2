.class public final enum Lcom/mnt/AdError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mnt/AdError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADDISPLAYSTYLE_REQUIRED:Lcom/mnt/AdError;

.field public static final enum ALL_ADS_COMSUMED:Lcom/mnt/AdError;

.field public static final enum NO_APPKEY:Lcom/mnt/AdError;

.field public static final enum NO_MATERIAL:Lcom/mnt/AdError;

.field public static final enum NO_NETWORK:Lcom/mnt/AdError;

.field public static final enum NO_OFFERS:Lcom/mnt/AdError;

.field public static final enum SERVER_ERROR:Lcom/mnt/AdError;

.field private static final synthetic c:[Lcom/mnt/AdError;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 13
    new-instance v0, Lcom/mnt/AdError;

    const-string v1, "NO_NETWORK"

    const v2, 0x186a1

    sget-object v3, Lcom/mnt/impl/e;->ad:Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/mnt/AdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mnt/AdError;->NO_NETWORK:Lcom/mnt/AdError;

    .line 14
    new-instance v0, Lcom/mnt/AdError;

    const-string v1, "NO_OFFERS"

    const v2, 0x186a2

    sget-object v3, Lcom/mnt/impl/e;->ae:Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/mnt/AdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    .line 15
    new-instance v0, Lcom/mnt/AdError;

    const-string v1, "NO_MATERIAL"

    const v2, 0x186a8

    sget-object v3, Lcom/mnt/impl/e;->af:Ljava/lang/String;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/mnt/AdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mnt/AdError;->NO_MATERIAL:Lcom/mnt/AdError;

    .line 16
    new-instance v0, Lcom/mnt/AdError;

    const-string v1, "NO_APPKEY"

    const v2, 0x186a3

    sget-object v3, Lcom/mnt/impl/e;->ag:Ljava/lang/String;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/mnt/AdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mnt/AdError;->NO_APPKEY:Lcom/mnt/AdError;

    .line 17
    new-instance v0, Lcom/mnt/AdError;

    const-string v1, "ADDISPLAYSTYLE_REQUIRED"

    const v2, 0x186a4

    sget-object v3, Lcom/mnt/impl/e;->ah:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/mnt/AdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mnt/AdError;->ADDISPLAYSTYLE_REQUIRED:Lcom/mnt/AdError;

    .line 18
    new-instance v0, Lcom/mnt/AdError;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x5

    const v3, 0x186a6

    sget-object v4, Lcom/mnt/impl/e;->ai:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mnt/AdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mnt/AdError;->SERVER_ERROR:Lcom/mnt/AdError;

    .line 19
    new-instance v0, Lcom/mnt/AdError;

    const-string v1, "ALL_ADS_COMSUMED"

    const/4 v2, 0x6

    const v3, 0x186a7

    sget-object v4, Lcom/mnt/impl/e;->aj:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mnt/AdError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mnt/AdError;->ALL_ADS_COMSUMED:Lcom/mnt/AdError;

    .line 12
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mnt/AdError;

    sget-object v1, Lcom/mnt/AdError;->NO_NETWORK:Lcom/mnt/AdError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mnt/AdError;->NO_MATERIAL:Lcom/mnt/AdError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mnt/AdError;->NO_APPKEY:Lcom/mnt/AdError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mnt/AdError;->ADDISPLAYSTYLE_REQUIRED:Lcom/mnt/AdError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/mnt/AdError;->SERVER_ERROR:Lcom/mnt/AdError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mnt/AdError;->ALL_ADS_COMSUMED:Lcom/mnt/AdError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mnt/AdError;->c:[Lcom/mnt/AdError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/mnt/AdError;->a:I

    .line 26
    iput-object p4, p0, Lcom/mnt/AdError;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static valueOf(I)Lcom/mnt/AdError;
    .locals 5

    .prologue
    .line 38
    invoke-static {}, Lcom/mnt/AdError;->values()[Lcom/mnt/AdError;

    move-result-object v2

    .line 39
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 40
    invoke-virtual {v0}, Lcom/mnt/AdError;->getErrorCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 43
    :goto_1
    return-object v0

    .line 39
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mnt/AdError;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/mnt/AdError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mnt/AdError;

    return-object v0
.end method

.method public static values()[Lcom/mnt/AdError;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/mnt/AdError;->c:[Lcom/mnt/AdError;

    invoke-virtual {v0}, [Lcom/mnt/AdError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mnt/AdError;

    return-object v0
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/mnt/AdError;->a:I

    return v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mnt/AdError;->b:Ljava/lang/String;

    return-object v0
.end method
