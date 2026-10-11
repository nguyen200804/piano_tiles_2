.class public Lcom/example/luckywheel/ad/e;
.super Lcom/example/luckywheel/ad/g;


# static fields
.field private static b:Lcom/example/luckywheel/ad/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/example/luckywheel/ad/g;-><init>()V

    return-void
.end method

.method public static c()Lcom/example/luckywheel/ad/e;
    .locals 1

    sget-object v0, Lcom/example/luckywheel/ad/e;->b:Lcom/example/luckywheel/ad/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/ad/e;

    invoke-direct {v0}, Lcom/example/luckywheel/ad/e;-><init>()V

    sput-object v0, Lcom/example/luckywheel/ad/e;->b:Lcom/example/luckywheel/ad/e;

    :cond_0
    sget-object v0, Lcom/example/luckywheel/ad/e;->b:Lcom/example/luckywheel/ad/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/ad/e;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ad/e;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/example/luckywheel/ad/e;->a:Ljava/util/List;

    new-instance v1, Lcom/example/luckywheel/ad/googlead/admob/b;

    invoke-direct {v1}, Lcom/example/luckywheel/ad/googlead/admob/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/example/luckywheel/ad/e;->a:Ljava/util/List;

    new-instance v1, Lcom/example/luckywheel/ad/googlead/a/a;

    invoke-direct {v1}, Lcom/example/luckywheel/ad/googlead/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/example/luckywheel/ad/e;->a:Ljava/util/List;

    new-instance v1, Lcom/example/luckywheel/ad/googlead/admob/a;

    invoke-direct {v1}, Lcom/example/luckywheel/ad/googlead/admob/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/example/luckywheel/ad/h$b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/example/luckywheel/ad/g;->a(Landroid/content/Context;Lcom/example/luckywheel/ad/h$b;)V

    return-void
.end method
