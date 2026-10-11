.class Lcom/jirbo/adcolony/an$ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ab"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/jirbo/adcolony/an$s;

.field d:Lcom/jirbo/adcolony/an$aa;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1524
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1527
    :cond_0
    :goto_0
    return v0

    .line 1525
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ab;->c:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ab;->d:Lcom/jirbo/adcolony/an$aa;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$aa;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1527
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1532
    const-string v1, "background_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ab;->a:Ljava/lang/String;

    .line 1533
    const-string v1, "background_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ab;->b:Ljava/lang/String;

    .line 1535
    new-instance v1, Lcom/jirbo/adcolony/an$s;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$s;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ab;->c:Lcom/jirbo/adcolony/an$s;

    .line 1536
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ab;->c:Lcom/jirbo/adcolony/an$s;

    const-string v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$s;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return v0

    .line 1538
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/an$aa;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$aa;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ab;->d:Lcom/jirbo/adcolony/an$aa;

    .line 1539
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ab;->d:Lcom/jirbo/adcolony/an$aa;

    const-string v2, "dialog"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$aa;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1541
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1546
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$ab;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/jirbo/adcolony/an$ab;->d:Lcom/jirbo/adcolony/an$aa;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$aa;->b()V

    .line 1548
    return-void
.end method
