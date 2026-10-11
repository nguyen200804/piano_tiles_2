.class Lcom/jirbo/adcolony/an$q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation


# instance fields
.field a:Z

.field b:D

.field c:Z

.field d:Z

.field e:Ljava/lang/String;

.field f:Lcom/jirbo/adcolony/an$v;

.field g:Ljava/lang/String;

.field h:Lcom/jirbo/adcolony/an$s;

.field i:Lcom/jirbo/adcolony/an$n;

.field j:Lcom/jirbo/adcolony/an$n;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1884
    invoke-static {}, Lcom/jirbo/adcolony/aq;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1886
    const/16 v0, 0x8

    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 1887
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "Ad not ready due to no network connection."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    .line 1894
    :cond_0
    :goto_0
    return v0

    .line 1889
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$q;->a:Z

    if-eqz v1, :cond_0

    .line 1890
    iget-object v1, p0, Lcom/jirbo/adcolony/an$q;->f:Lcom/jirbo/adcolony/an$v;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$v;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1891
    iget-object v1, p0, Lcom/jirbo/adcolony/an$q;->h:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/jirbo/adcolony/an$q;->i:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1893
    iget-object v1, p0, Lcom/jirbo/adcolony/an$q;->j:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$n;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1894
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1899
    if-nez p1, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return v0

    .line 1901
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$q;->a:Z

    .line 1903
    const-string v1, "load_timeout"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->e(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/jirbo/adcolony/an$q;->b:D

    .line 1904
    const-string v1, "load_timeout_enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$q;->c:Z

    .line 1905
    const-string v1, "load_spinner_enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$q;->d:Z

    .line 1906
    const-string v1, "background_color"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$q;->e:Ljava/lang/String;

    .line 1908
    const-string v1, "html5_tag"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$q;->g:Ljava/lang/String;

    .line 1911
    new-instance v1, Lcom/jirbo/adcolony/an$v;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$v;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$q;->f:Lcom/jirbo/adcolony/an$v;

    .line 1912
    iget-object v1, p0, Lcom/jirbo/adcolony/an$q;->f:Lcom/jirbo/adcolony/an$v;

    const-string v2, "mraid_js"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$v;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1915
    new-instance v1, Lcom/jirbo/adcolony/an$s;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$s;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$q;->h:Lcom/jirbo/adcolony/an$s;

    .line 1916
    iget-object v1, p0, Lcom/jirbo/adcolony/an$q;->h:Lcom/jirbo/adcolony/an$s;

    const-string v2, "background_logo"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$s;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1919
    new-instance v1, Lcom/jirbo/adcolony/an$n;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$n;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$q;->i:Lcom/jirbo/adcolony/an$n;

    .line 1920
    iget-object v1, p0, Lcom/jirbo/adcolony/an$q;->i:Lcom/jirbo/adcolony/an$n;

    const-string v2, "replay"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$n;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1923
    new-instance v1, Lcom/jirbo/adcolony/an$n;

    invoke-direct {v1}, Lcom/jirbo/adcolony/an$n;-><init>()V

    iput-object v1, p0, Lcom/jirbo/adcolony/an$q;->j:Lcom/jirbo/adcolony/an$n;

    .line 1924
    iget-object v1, p0, Lcom/jirbo/adcolony/an$q;->j:Lcom/jirbo/adcolony/an$n;

    const-string v2, "close"

    invoke-virtual {p1, v2}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/an$n;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1926
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 1931
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$q;->a:Z

    if-nez v0, :cond_1

    .line 1936
    :cond_0
    :goto_0
    return-void

    .line 1932
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/an$q;->f:Lcom/jirbo/adcolony/an$v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/an$q;->f:Lcom/jirbo/adcolony/an$v;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$v;->b()V

    .line 1933
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/an$q;->h:Lcom/jirbo/adcolony/an$s;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/an$q;->h:Lcom/jirbo/adcolony/an$s;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$s;->b()V

    .line 1934
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/an$q;->i:Lcom/jirbo/adcolony/an$n;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/an$q;->i:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$n;->b()V

    .line 1935
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/an$q;->j:Lcom/jirbo/adcolony/an$n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an$q;->j:Lcom/jirbo/adcolony/an$n;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$n;->b()V

    goto :goto_0
.end method
