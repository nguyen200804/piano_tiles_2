.class public Lcom/example/luckywheel/ad/googlead/admob/b;
.super Lcom/example/luckywheel/ad/googlead/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ad/googlead/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/example/luckywheel/b/a;->a()Lcom/example/luckywheel/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/example/luckywheel/ad/googlead/admob/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/luckywheel/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-super {p0}, Lcom/example/luckywheel/ad/googlead/a;->d()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, "admob_interstitial"

    return-object v0
.end method
