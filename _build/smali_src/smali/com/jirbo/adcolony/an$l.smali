.class Lcom/jirbo/adcolony/an$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Z

.field g:D

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Lcom/jirbo/adcolony/an$m;

.field l:Lcom/jirbo/adcolony/an$af;

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/jirbo/adcolony/an$h;

.field o:Lcom/jirbo/adcolony/an$p;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an$l;->e:Z

    .line 24
    new-instance v0, Lcom/jirbo/adcolony/an$h;

    invoke-direct {v0}, Lcom/jirbo/adcolony/an$h;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Caching media"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 89
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$l;->a:Z

    if-nez v0, :cond_1

    .line 92
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$h;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/an$h;->a(I)Lcom/jirbo/adcolony/an$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$e;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$l;->a:Z

    .line 45
    const-string v1, "log_screen_overlay"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$l;->b:Z

    .line 46
    const-string v1, "last_country"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->c:Ljava/lang/String;

    .line 47
    const-string v1, "last_ip"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->d:Ljava/lang/String;

    .line 49
    const-string v1, "collect_iap_enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$l;->f:Z

    .line 50
    const-string v1, "media_pool_size"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->e(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/an$l;->g:D

    .line 51
    const-string v1, "log_level"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->h:Ljava/lang/String;

    .line 53
    const-string v1, "view_network_pass_filter"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->i:Ljava/lang/String;

    .line 54
    const-string v1, "cache_network_pass_filter"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->j:Ljava/lang/String;

    .line 56
    const-string v1, "hardware_acceleration_disabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$l;->e:Z

    .line 58
    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->i:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->i:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    :cond_2
    const-string v1, "all"

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->i:Ljava/lang/String;

    .line 62
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    :cond_4
    const-string v1, "all"

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->j:Ljava/lang/String;

    .line 67
    :cond_5
    new-instance v1, Lcom/jirbo/adcolony/an$m;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$m;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->k:Lcom/jirbo/adcolony/an$m;

    .line 68
    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->k:Lcom/jirbo/adcolony/an$m;

    const-string v2, "tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$m;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lcom/jirbo/adcolony/an$af;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$af;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->l:Lcom/jirbo/adcolony/an$af;

    .line 71
    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->l:Lcom/jirbo/adcolony/an$af;

    const-string v2, "third_party_tracking"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$af;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "console_messages"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->m:Ljava/util/ArrayList;

    .line 75
    sget-object v1, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v2, "Parsing zones"

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 76
    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    const-string v2, "zones"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/a$c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$h;->a(Lcom/jirbo/adcolony/a$c;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Lcom/jirbo/adcolony/an$p;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$p;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$l;->o:Lcom/jirbo/adcolony/an$p;

    .line 79
    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->o:Lcom/jirbo/adcolony/an$p;

    const-string v2, "device"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$p;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Finished parsing app info"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 83
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;ZZ)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$l;->a:Z

    if-nez v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/an$l;->n:Lcom/jirbo/adcolony/an$h;

    invoke-virtual {v1, p1}, Lcom/jirbo/adcolony/an$h;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v1, p2, p3}, Lcom/jirbo/adcolony/an$e;->a(ZZ)Z

    move-result v0

    goto :goto_0
.end method
