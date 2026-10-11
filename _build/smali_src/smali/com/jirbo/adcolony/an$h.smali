.class Lcom/jirbo/adcolony/an$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/an$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$h;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a(I)Lcom/jirbo/adcolony/an$e;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/jirbo/adcolony/an$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$e;

    return-object v0
.end method

.method a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;
    .locals 3

    .prologue
    .line 466
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/an$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/jirbo/adcolony/an$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$e;

    .line 469
    iget-object v2, v0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    :goto_1
    return-object v0

    .line 466
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 473
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 2

    .prologue
    .line 449
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/an$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/jirbo/adcolony/an$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/jirbo/adcolony/an$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$k;->a()V

    .line 449
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 456
    :cond_1
    return-void
.end method

.method a(Lcom/jirbo/adcolony/a$c;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 426
    if-nez p1, :cond_0

    .line 428
    sput-boolean v1, Lcom/jirbo/adcolony/t;->g:Z

    .line 444
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 431
    :goto_1
    invoke-virtual {p1}, Lcom/jirbo/adcolony/a$c;->f_()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 433
    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$c;->a(I)Lcom/jirbo/adcolony/a$g;

    move-result-object v3

    .line 434
    const-string v2, "uuid"

    invoke-virtual {v3, v2}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/an$h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;

    move-result-object v2

    .line 435
    if-nez v2, :cond_1

    new-instance v2, Lcom/jirbo/adcolony/an$e;

    invoke-direct {v2}, Lcom/jirbo/adcolony/an$e;-><init>()V

    .line 436
    :cond_1
    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/an$e;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 438
    sput-boolean v1, Lcom/jirbo/adcolony/t;->g:Z

    goto :goto_0

    .line 441
    :cond_2
    iget-object v3, p0, Lcom/jirbo/adcolony/an$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    :cond_3
    sput-boolean v1, Lcom/jirbo/adcolony/t;->g:Z

    .line 444
    const/4 v1, 0x1

    goto :goto_0
.end method

.method b()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/jirbo/adcolony/an$h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
