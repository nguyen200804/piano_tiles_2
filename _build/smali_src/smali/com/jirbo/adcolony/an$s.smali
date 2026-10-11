.class Lcom/jirbo/adcolony/an$s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    .line 1622
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$s;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1623
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$s;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1628
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1638
    :cond_0
    :goto_0
    return v0

    .line 1630
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1, v0}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$s;->f:Z

    .line 1631
    const-string v1, "width"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$s;->a:I

    .line 1632
    const-string v1, "height"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$s;->b:I

    .line 1633
    const-string v1, "scale"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/jirbo/adcolony/an$s;->c:I

    .line 1634
    const-string v1, "image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$s;->d:Ljava/lang/String;

    .line 1635
    const-string v1, "image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$s;->e:Ljava/lang/String;

    .line 1636
    iget-object v1, p0, Lcom/jirbo/adcolony/an$s;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$s;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1643
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$s;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$s;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    return-void
.end method
