.class Lcom/jirbo/adcolony/an$ac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ac"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Lcom/jirbo/adcolony/an$s;

.field m:Lcom/jirbo/adcolony/an$n;

.field n:Lcom/jirbo/adcolony/an$n;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1472
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$ac;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return v0

    .line 1473
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ac;->l:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ac;->m:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1475
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1480
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$ac;->a:I

    .line 1481
    const-string v1, "label_reward"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->b:Ljava/lang/String;

    .line 1482
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$ac;->c:I

    .line 1483
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$ac;->d:I

    .line 1484
    const-string v1, "image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->e:Ljava/lang/String;

    .line 1485
    const-string v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->f:Ljava/lang/String;

    .line 1486
    const-string v1, "label"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->g:Ljava/lang/String;

    .line 1487
    const-string v1, "label_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->h:Ljava/lang/String;

    .line 1488
    const-string v1, "label_shadow_rgba"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->i:Ljava/lang/String;

    .line 1489
    const-string v1, "label_fraction"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->j:Ljava/lang/String;

    .line 1490
    const-string v1, "label_html"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->k:Ljava/lang/String;

    .line 1492
    new-instance v1, Lcom/jirbo/adcolony/an$s;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$s;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->l:Lcom/jirbo/adcolony/an$s;

    .line 1493
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ac;->l:Lcom/jirbo/adcolony/an$s;

    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$s;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return v0

    .line 1495
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/an$n;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$n;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->m:Lcom/jirbo/adcolony/an$n;

    .line 1496
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ac;->m:Lcom/jirbo/adcolony/an$n;

    const-string v2, "option_yes"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$n;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    new-instance v1, Lcom/jirbo/adcolony/an$n;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$n;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ac;->n:Lcom/jirbo/adcolony/an$n;

    .line 1499
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ac;->n:Lcom/jirbo/adcolony/an$n;

    const-string v2, "option_no"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$n;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1506
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$ac;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$ac;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/jirbo/adcolony/an$ac;->l:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$s;->b()V

    .line 1508
    iget-object v0, p0, Lcom/jirbo/adcolony/an$ac;->m:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$n;->b()V

    .line 1509
    iget-object v0, p0, Lcom/jirbo/adcolony/an$ac;->n:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$n;->b()V

    .line 1510
    return-void
.end method
