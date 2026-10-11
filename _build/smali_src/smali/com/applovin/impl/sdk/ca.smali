.class public Lcom/applovin/impl/sdk/ca;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/az;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/az;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/az;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aZ:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->ba:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public C()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bb:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public D()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bd:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public E()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bc:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bf:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bg:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bn:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public I()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bo:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public J()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bs:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public K()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bt:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public L()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->bu:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->O:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aw:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->ax:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->R:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->T:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aJ:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aK:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aL:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aI:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->W:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->ao:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aq:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->ar:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->as:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->au:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->at:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->av:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->ay:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->az:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aO:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public u()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aP:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aQ:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aW:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aU:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aV:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ca;->a:Lcom/applovin/impl/sdk/az;

    sget-object v1, Lcom/applovin/impl/sdk/av;->aX:Lcom/applovin/impl/sdk/by;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/az;->a(Lcom/applovin/impl/sdk/by;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
