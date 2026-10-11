.class Lcom/applovin/impl/sdk/cq;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/applovin/sdk/AppLovinAdSize;

.field final b:Ljava/lang/Object;

.field c:Lcom/applovin/sdk/AppLovinAd;

.field d:J

.field e:Z

.field private final f:Ljava/util/Collection;

.field private final g:Ljava/util/Collection;


# direct methods
.method private constructor <init>(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/cq;->f:Ljava/util/Collection;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/cq;->g:Ljava/util/Collection;

    iput-object p1, p0, Lcom/applovin/impl/sdk/cq;->a:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/cq;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/cq;->c:Lcom/applovin/sdk/AppLovinAd;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/cq;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/cq;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/sdk/cm;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/cq;-><init>(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cq;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->g:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/cq;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cq;->f:Ljava/util/Collection;

    return-object v0
.end method
