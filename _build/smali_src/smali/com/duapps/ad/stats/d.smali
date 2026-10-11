.class public Lcom/duapps/ad/stats/d;
.super Lcom/duapps/ad/stats/e;
.source "ToolClickHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/stats/d$c;,
        Lcom/duapps/ad/stats/d$b;,
        Lcom/duapps/ad/stats/d$a;
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/Context;

.field private k:Landroid/webkit/WebView;

.field private l:Lcom/duapps/ad/stats/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/e;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->c:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->i:Ljava/util/List;

    .line 781
    invoke-direct {p0}, Lcom/duapps/ad/stats/d;->g()V

    .line 782
    iput-object p1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    .line 783
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/stats/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/stats/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/duapps/ad/stats/d;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/duapps/ad/stats/d;Ljava/lang/String;Lcom/duapps/ad/stats/f;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/stats/d;->a(Ljava/lang/String;Lcom/duapps/ad/stats/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/duapps/ad/stats/f;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 445
    if-eqz p2, :cond_0

    .line 446
    :try_start_0
    const-string v0, ""

    .line 447
    invoke-virtual {p2}, Lcom/duapps/ad/stats/f;->f()Lcom/duapps/ad/entity/AdData;

    move-result-object v0

    .line 448
    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->v:Ljava/lang/String;

    .line 449
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    :cond_0
    :goto_1
    return-object p1

    .line 458
    :cond_1
    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExgUrl exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/stats/d;->i(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 602
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 611
    :goto_0
    return v0

    .line 605
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 607
    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",dataKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 611
    goto :goto_0
.end method

.method static synthetic b(Lcom/duapps/ad/stats/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 627
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/duapps/ad/stats/d;->h:Z

    .line 628
    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appendNewUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/stats/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 641
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "delete"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 647
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    .line 652
    :cond_0
    return-object p1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/duapps/ad/stats/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 535
    .line 538
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 540
    const/4 v0, 0x0

    aget-object v0, v6, v0

    .line 541
    invoke-static {v0, p1}, Lcom/duapps/ad/stats/d;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/duapps/ad/stats/d;->g:Z

    .line 542
    const-string v1, "ToolClickHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMatchUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/duapps/ad/stats/d;->g:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-boolean v1, p0, Lcom/duapps/ad/stats/d;->g:Z

    if-eqz v1, :cond_9

    .line 544
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/stats/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 547
    :cond_0
    iput-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    .line 548
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exg_hostname:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "split[0]:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "split[1]:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v3

    move-object v1, p1

    .line 551
    :goto_0
    :try_start_1
    array-length v0, v6

    if-ge v5, v0, :cond_1

    .line 552
    aget-object v0, v6, v5

    .line 553
    const-string v4, "ToolClickHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "str:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",split.length:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 555
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 556
    const/4 v0, 0x0

    aget-object v7, v4, v0

    .line 558
    const-string v0, ""

    .line 559
    array-length v8, v4

    if-le v8, v3, :cond_7

    .line 560
    const/4 v0, 0x1

    aget-object v0, v4, v0

    move-object v4, v0

    .line 563
    :goto_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 564
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 565
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 566
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 567
    iget-object v10, p0, Lcom/duapps/ad/stats/d;->i:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 591
    :catch_0
    move-exception v0

    .line 592
    :goto_3
    const-string v2, "ToolClickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGaidUrl exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_4
    move-object p1, v1

    .line 594
    :cond_2
    return-object p1

    .line 570
    :cond_3
    :try_start_2
    const-string v0, "ToolClickHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "oldKeyValue:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0, v7, v4}, Lcom/duapps/ad/stats/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    const-string v4, "ToolClickHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v4, "ToolClickHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isHasKey:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/duapps/ad/stats/d;->i:Ljava/util/List;

    invoke-direct {p0, v7, v10}, Lcom/duapps/ad/stats/d;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/duapps/ad/stats/d;->i:Ljava/util/List;

    invoke-direct {p0, v7, v4}, Lcom/duapps/ad/stats/d;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 577
    :cond_4
    invoke-virtual {p0, v1, v7, v0}, Lcom/duapps/ad/stats/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    :goto_5
    invoke-direct {p0, v1, v7, v0}, Lcom/duapps/ad/stats/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 583
    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/duapps/ad/stats/d;->h:Z

    .line 584
    const-string v1, "ToolClickHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUrlModify:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/duapps/ad/stats/d;->h:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 551
    :goto_7
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 580
    :cond_5
    :try_start_4
    invoke-direct {p0, v1, v7, v0}, Lcom/duapps/ad/stats/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    goto :goto_5

    :cond_6
    move v1, v3

    .line 583
    goto :goto_6

    .line 591
    :catch_1
    move-exception v0

    move-object v1, p1

    goto/16 :goto_3

    :catch_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_3

    :cond_7
    move-object v4, v0

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_7

    :cond_9
    move-object v1, p1

    goto/16 :goto_4
.end method

.method private d(Lcom/duapps/ad/stats/f;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 859
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 860
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click with Play installed? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_0
    if-eqz v0, :cond_15

    .line 863
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v1

    .line 864
    invoke-static {v1}, Lcom/duapps/ad/stats/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 865
    invoke-virtual {p1, v5}, Lcom/duapps/ad/stats/f;->b(Z)V

    .line 866
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v2, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    if-ne v0, v5, :cond_2

    const-string v0, "1"

    :goto_0
    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v2, p1, v0, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/duapps/ad/stats/d;->h(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->f()V

    .line 960
    :goto_1
    return-void

    .line 869
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 875
    :cond_3
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->d()I

    move-result v0

    if-lez v0, :cond_b

    .line 876
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/k;->a(Landroid/content/Context;)Lcom/duapps/ad/base/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/k;->a(Ljava/lang/String;)Lcom/duapps/ad/base/j;

    move-result-object v2

    .line 877
    invoke-virtual {p1, v2}, Lcom/duapps/ad/stats/f;->a(Lcom/duapps/ad/base/j;)V

    .line 878
    iget v0, v2, Lcom/duapps/ad/base/j;->c:I

    if-ne v5, v0, :cond_6

    .line 879
    invoke-virtual {p1, v5}, Lcom/duapps/ad/stats/f;->b(Z)V

    .line 880
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 881
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0, p1, v1, v3, v4}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    if-ne v0, v5, :cond_5

    const-string v0, "1"

    :goto_2
    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v1, p1, v0, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_4
    iget-object v0, v2, Lcom/duapps/ad/base/j;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/d;->h(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 887
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->f()V

    goto :goto_1

    .line 883
    :cond_5
    const-string v0, "0"

    goto :goto_2

    .line 889
    :cond_6
    iget v0, v2, Lcom/duapps/ad/base/j;->c:I

    if-eq v0, v4, :cond_7

    iget v0, v2, Lcom/duapps/ad/base/j;->c:I

    if-ne v0, v6, :cond_a

    .line 892
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->f()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    iget-object v1, v1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 893
    const-string v0, "ToolClickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->f()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget-object v4, v4, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parse result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/duapps/ad/base/j;->c:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and start google play via url -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 896
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v2, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    if-ne v0, v5, :cond_9

    const-string v0, "1"

    :goto_3
    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v2, p1, v0, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_8
    invoke-virtual {p0, p1, v1}, Lcom/duapps/ad/stats/d;->h(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->f()V

    goto/16 :goto_1

    .line 898
    :cond_9
    const-string v0, "0"

    goto :goto_3

    .line 905
    :cond_a
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->a()V

    .line 906
    invoke-virtual {p0, p1, v1}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 909
    :cond_b
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->q()I

    move-result v0

    if-eq v0, v5, :cond_c

    .line 910
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->q()I

    move-result v0

    if-ne v0, v4, :cond_14

    .line 911
    :cond_c
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/l;->a(Landroid/content/Context;)Lcom/duapps/ad/base/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duapps/ad/base/l;->a(Ljava/lang/String;)Lcom/duapps/ad/base/j;

    move-result-object v2

    .line 912
    iget v0, v2, Lcom/duapps/ad/base/j;->c:I

    if-ne v0, v5, :cond_f

    .line 913
    invoke-virtual {p1, v5}, Lcom/duapps/ad/stats/f;->b(Z)V

    .line 914
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 915
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0, p1, v1, v3, v4}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    if-ne v0, v5, :cond_e

    const-string v0, "1"

    :goto_4
    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v1, p1, v0, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_d
    iget-object v0, v2, Lcom/duapps/ad/base/j;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/d;->h(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->f()V

    goto/16 :goto_1

    .line 917
    :cond_e
    const-string v0, "0"

    goto :goto_4

    .line 923
    :cond_f
    iget v0, v2, Lcom/duapps/ad/base/j;->c:I

    if-eq v0, v4, :cond_10

    iget v0, v2, Lcom/duapps/ad/base/j;->c:I

    if-ne v0, v6, :cond_13

    .line 926
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 927
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->f()Lcom/duapps/ad/entity/AdData;

    move-result-object v1

    iget-object v1, v1, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 928
    const-string v0, "ToolClickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->f()Lcom/duapps/ad/entity/AdData;

    move-result-object v4

    iget-object v4, v4, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " parse result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/duapps/ad/base/j;->c:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and start google play via url -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 931
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-object v2, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v2, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    if-ne v0, v5, :cond_12

    const-string v0, "1"

    :goto_5
    iget-object v3, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v2, p1, v0, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_11
    invoke-virtual {p0, p1, v1}, Lcom/duapps/ad/stats/d;->h(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->f()V

    goto/16 :goto_1

    .line 933
    :cond_12
    const-string v0, "0"

    goto :goto_5

    .line 940
    :cond_13
    invoke-virtual {p0, p1, v1}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 945
    :cond_14
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->a()V

    .line 946
    invoke-virtual {p0, p1, v1}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 951
    :cond_15
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 952
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    if-ne v0, v5, :cond_17

    const-string v0, "1"

    :goto_6
    iget-object v2, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_16
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/d;->g(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 958
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->f()V

    goto/16 :goto_1

    .line 954
    :cond_17
    const-string v0, "0"

    goto :goto_6
.end method

.method static synthetic e(Lcom/duapps/ad/stats/d;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    return v0
.end method

.method private g()V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

.method private i(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 164
    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->b:Z

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->f()Lcom/duapps/ad/entity/AdData;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->d:Ljava/lang/String;

    .line 170
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 171
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browserUrl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " no pkgname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    if-ne v0, v4, :cond_4

    const-string v0, "1"

    :goto_2
    iget-object v2, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/d;->g(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 175
    :cond_4
    const-string v0, "0"

    goto :goto_2

    .line 181
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->f()Lcom/duapps/ad/entity/AdData;

    move-result-object v3

    iget-object v3, v3, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start google play via mock url -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    const-string v2, "com.android.vending"

    invoke-static {v1, v2}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/d;->h(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 189
    :goto_3
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    if-ne v0, v4, :cond_7

    const-string v0, "1"

    :goto_4
    iget-object v2, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    invoke-static {v1, p1, v0, v2}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/d;->g(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    goto :goto_3

    .line 192
    :cond_7
    const-string v0, "0"

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 505
    :try_start_0
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 507
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u957f\u5ea6"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 509
    const-string v0, "ToolClickHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsonArray.length():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    invoke-direct {p0, p1, v0}, Lcom/duapps/ad/stats/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    iget-boolean v3, p0, Lcom/duapps/ad/stats/d;->g:Z

    if-eqz v3, :cond_1

    .line 513
    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsonArray_url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 522
    :cond_0
    :goto_1
    return-object p1

    .line 508
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u6790\u5931\u8d25:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 701
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 702
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 703
    if-eq v0, v5, :cond_2

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string v2, "&"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 707
    if-eq v0, v5, :cond_1

    .line 708
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/d;->h:Z

    .line 715
    :cond_2
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceGaidUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-object p1
.end method

.method public a(Lcom/duapps/ad/stats/f;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 791
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 794
    :cond_0
    const-string v0, "ToolClickHandler"

    const-string v1, "exg\u70b9\u51fb\u4e86\u5e7f\u544a"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iput-boolean v2, p0, Lcom/duapps/ad/stats/d;->h:Z

    .line 796
    const-string v0, ""

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    .line 797
    const-string v0, ""

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    .line 798
    const-string v0, ""

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->e:Ljava/lang/String;

    .line 802
    invoke-static {}, Lcom/duapps/ad/base/t;->a()Lcom/duapps/ad/base/t;

    move-result-object v0

    new-instance v1, Lcom/duapps/ad/stats/d$1;

    invoke-direct {v1, p0}, Lcom/duapps/ad/stats/d$1;-><init>(Lcom/duapps/ad/stats/d;)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/t;->a(Ljava/lang/Runnable;)V

    .line 808
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/duapps/ad/R$string;->duapps_ad_offer_wall_footer_loading:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 810
    invoke-virtual {p0, v3}, Lcom/duapps/ad/stats/d;->a(Z)V

    .line 811
    invoke-virtual {p0, p1, v3}, Lcom/duapps/ad/stats/d;->a(Lcom/duapps/ad/stats/f;Z)V

    goto :goto_0
.end method

.method a(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->d()I

    move-result v0

    if-gtz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v0, Lcom/duapps/ad/base/j;

    invoke-direct {v0}, Lcom/duapps/ad/base/j;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/base/j;->a:Ljava/lang/String;

    .line 203
    iput-object p2, v0, Lcom/duapps/ad/base/j;->d:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/duapps/ad/base/j;->b:Ljava/lang/String;

    .line 205
    const/4 v1, 0x1

    iput v1, v0, Lcom/duapps/ad/base/j;->c:I

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/duapps/ad/base/j;->e:J

    .line 207
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/duapps/ad/stats/i;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/i;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v0}, Lcom/duapps/ad/stats/i;->a(Lcom/duapps/ad/base/j;)V

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/stats/f;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 815
    iput-boolean v2, p0, Lcom/duapps/ad/stats/d;->b:Z

    .line 816
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 817
    if-eqz v0, :cond_1

    .line 818
    invoke-virtual {p0, p1}, Lcom/duapps/ad/stats/d;->b(Lcom/duapps/ad/stats/f;)V

    .line 819
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->f()V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    if-eqz p2, :cond_2

    .line 822
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 825
    invoke-virtual {p0, p1}, Lcom/duapps/ad/stats/d;->c(Lcom/duapps/ad/stats/f;)V

    .line 826
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->f()V

    goto :goto_0

    .line 829
    :cond_3
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 830
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/duapps/ad/stats/d;->f(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    goto :goto_0

    .line 834
    :cond_4
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 835
    invoke-virtual {p1, v2}, Lcom/duapps/ad/stats/f;->b(Z)V

    .line 836
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 837
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicked URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_5
    invoke-direct {p0, p1}, Lcom/duapps/ad/stats/d;->d(Lcom/duapps/ad/stats/f;)V

    goto :goto_0

    .line 847
    :cond_6
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Open type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 656
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    :cond_0
    const-string p2, ""

    .line 696
    :cond_1
    :goto_0
    return-object p2

    .line 659
    :cond_2
    const-string v0, ""

    .line 660
    const-string v0, "{gaid}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    iget-object p2, p0, Lcom/duapps/ad/stats/d;->c:Ljava/lang/String;

    .line 662
    iput-object p1, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    .line 663
    const-string v0, "gaid"

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 664
    :cond_3
    const-string v0, "{aid}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 665
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 666
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iput-object p1, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    .line 668
    const-string v0, "anid"

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 670
    :cond_4
    const-string v0, "{gaid_md5}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 671
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_md5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    .line 673
    const-string v0, "gaid"

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 674
    :cond_5
    const-string v0, "{gaid_sha1}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 675
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 676
    const-string v0, "gaid"

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sha1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    goto :goto_0

    .line 678
    :cond_6
    const-string v0, "{aid_md5}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 679
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 680
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_md5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    .line 682
    const-string v0, "anid"

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 684
    :cond_7
    const-string v0, "{aid_sha1}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 685
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 686
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sha1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->f:Ljava/lang/String;

    .line 688
    const-string v0, "anid"

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 690
    :cond_8
    const-string v0, "{null}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    const-string p2, "delete"

    goto/16 :goto_0
.end method

.method protected b(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 976
    invoke-static {}, Lcom/duapps/ad/c/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const-string v0, "ToolClickHandler"

    const-string v1, "Newer OS, use WebView redirect."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/duapps/ad/stats/d;->d(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :goto_0
    return-void

    .line 981
    :catch_0
    move-exception v0

    .line 982
    new-instance v0, Lcom/duapps/ad/stats/d$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/duapps/ad/stats/d$2;-><init>(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/duapps/ad/base/t;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 990
    :cond_1
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 991
    const-string v0, "ToolClickHandler"

    const-string v1, "Older OS, use Http redirect."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_2
    new-instance v0, Lcom/duapps/ad/stats/d$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/duapps/ad/stats/d$3;-><init>(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/duapps/ad/base/t;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected c(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1003
    invoke-static {}, Lcom/duapps/ad/stats/d;->d()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 1005
    new-instance v1, Lcom/duapps/ad/stats/d$b;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/stats/d$b;-><init>(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;)V

    .line 1006
    iput-object v1, p0, Lcom/duapps/ad/stats/d;->l:Lcom/duapps/ad/stats/d$a;

    .line 1007
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 1009
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Http] Decode URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :cond_0
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1014
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0xfa0

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1015
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 1016
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    :goto_0
    return-void

    .line 1017
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1020
    const-string v0, "ToolClickHandler"

    const-string v1, "[Http] Others error: "

    invoke-static {v0, v1, v6}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1021
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->p()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->p()I

    move-result v1

    if-lez v1, :cond_2

    const-wide/16 v2, 0x2

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;JILjava/lang/String;)V

    .line 1024
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v6}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v3, v1, v4

    .line 1027
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1026
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1022
    :cond_2
    const-wide/16 v2, 0x1

    goto :goto_1

    .line 1029
    :cond_3
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/duapps/ad/stats/h;->a(Landroid/content/Context;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p1}, Lcom/duapps/ad/stats/f;->n()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1032
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->b()V

    .line 1033
    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/stats/d;->i(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    .line 1035
    :cond_4
    invoke-virtual {p0}, Lcom/duapps/ad/stats/d;->f()V

    goto :goto_0
.end method

.method protected d(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1044
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->k:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1045
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/d;->k:Landroid/webkit/WebView;

    .line 1046
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1047
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 1048
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1049
    sget-object v1, Lcom/duapps/ad/base/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1050
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->k:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1052
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->k:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->k:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1057
    new-instance v0, Lcom/duapps/ad/stats/d$c;

    invoke-direct {v0, p0, p1}, Lcom/duapps/ad/stats/d$c;-><init>(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;)V

    .line 1058
    iput-object v0, p0, Lcom/duapps/ad/stats/d;->l:Lcom/duapps/ad/stats/d$a;

    .line 1059
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->k:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1061
    invoke-static {}, Lcom/duapps/ad/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] Decode URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1064
    const-string v1, "X-Requested-With"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object v1, p0, Lcom/duapps/ad/stats/d;->k:Landroid/webkit/WebView;

    invoke-virtual {v1, p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 1066
    return-void
.end method

.method public e(Lcom/duapps/ad/stats/f;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/duapps/ad/stats/d;->j:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duapps/ad/stats/h;->h(Landroid/content/Context;Lcom/duapps/ad/stats/f;)V

    .line 1092
    new-instance v0, Lcom/duapps/ad/stats/d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/duapps/ad/stats/d$4;-><init>(Lcom/duapps/ad/stats/d;Lcom/duapps/ad/stats/f;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/duapps/ad/base/t;->b(Ljava/lang/Runnable;)V

    .line 1098
    return-void
.end method
