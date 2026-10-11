.class Lcom/jirbo/adcolony/an$ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ad"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/jirbo/adcolony/an$s;

.field d:Lcom/jirbo/adcolony/an$ac;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1422
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$ad;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return v0

    .line 1423
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ad;->c:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1424
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ad;->d:Lcom/jirbo/adcolony/an$ac;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$ac;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1430
    const-string v1, "background_image"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ad;->a:Ljava/lang/String;

    .line 1431
    const-string v1, "background_image_last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ad;->b:Ljava/lang/String;

    .line 1433
    new-instance v1, Lcom/jirbo/adcolony/an$s;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$s;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ad;->c:Lcom/jirbo/adcolony/an$s;

    .line 1434
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ad;->c:Lcom/jirbo/adcolony/an$s;

    const-string v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$s;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return v0

    .line 1436
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/an$ac;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$ac;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$ad;->d:Lcom/jirbo/adcolony/an$ac;

    .line 1437
    iget-object v1, p0, Lcom/jirbo/adcolony/an$ad;->d:Lcom/jirbo/adcolony/an$ac;

    const-string v2, "dialog"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$ac;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1444
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$ad;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    iget-object v0, p0, Lcom/jirbo/adcolony/an$ad;->c:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$s;->b()V

    .line 1446
    iget-object v0, p0, Lcom/jirbo/adcolony/an$ad;->d:Lcom/jirbo/adcolony/an$ac;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$ac;->b()V

    .line 1447
    return-void
.end method
