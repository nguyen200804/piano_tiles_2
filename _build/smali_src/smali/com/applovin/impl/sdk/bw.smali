.class abstract Lcom/applovin/impl/sdk/bw;
.super Lcom/applovin/impl/sdk/au;

# interfaces
.implements Lcom/applovin/impl/sdk/cw;


# instance fields
.field private a:I

.field private b:J

.field private final c:Lcom/applovin/impl/sdk/cw;

.field private d:Lcom/applovin/impl/sdk/by;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/au;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/impl/sdk/bw;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bw;->d:Lcom/applovin/impl/sdk/by;

    iput p2, p0, Lcom/applovin/impl/sdk/bw;->a:I

    new-instance v0, Lcom/applovin/impl/sdk/bx;

    invoke-direct {v0, p0, p3, p1}, Lcom/applovin/impl/sdk/bx;-><init>(Lcom/applovin/impl/sdk/bw;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/bw;->c:Lcom/applovin/impl/sdk/cw;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/by;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-virtual {p3, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/applovin/impl/sdk/bw;-><init>(Ljava/lang/String;ILcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bw;)I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/sdk/bw;->a:I

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bw;I)I
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/bw;->a:I

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/bw;)J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/bw;->b:J

    return-wide v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/bw;->d:Lcom/applovin/impl/sdk/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/bw;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/az;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bw;->d:Lcom/applovin/impl/sdk/by;

    iget-object v2, p0, Lcom/applovin/impl/sdk/bw;->d:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/by;->c()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/az;->b()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/bw;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/bw;->c()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/bw;->b:J

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/by;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bw;->d:Lcom/applovin/impl/sdk/by;

    return-void
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/cv;Lcom/applovin/impl/sdk/cw;)V
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bw;->f:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getConnectionManager()Lcom/applovin/impl/sdk/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/bw;->c:Lcom/applovin/impl/sdk/cw;

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/bw;->a(Lcom/applovin/impl/sdk/cv;Lcom/applovin/impl/sdk/cw;)V

    return-void
.end method
