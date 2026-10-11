.class final enum Lcom/applovin/impl/sdk/bp;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/bp;

.field public static final enum b:Lcom/applovin/impl/sdk/bp;

.field public static final enum c:Lcom/applovin/impl/sdk/bp;

.field private static final synthetic d:[Lcom/applovin/impl/sdk/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/bp;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/bp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bp;

    new-instance v0, Lcom/applovin/impl/sdk/bp;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/sdk/bp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/bp;->b:Lcom/applovin/impl/sdk/bp;

    new-instance v0, Lcom/applovin/impl/sdk/bp;

    const-string v1, "POSTBACKS"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/sdk/bp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/bp;->c:Lcom/applovin/impl/sdk/bp;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/applovin/impl/sdk/bp;

    sget-object v1, Lcom/applovin/impl/sdk/bp;->a:Lcom/applovin/impl/sdk/bp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/bp;->b:Lcom/applovin/impl/sdk/bp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/sdk/bp;->c:Lcom/applovin/impl/sdk/bp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/applovin/impl/sdk/bp;->d:[Lcom/applovin/impl/sdk/bp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
