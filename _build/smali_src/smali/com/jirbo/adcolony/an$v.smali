.class Lcom/jirbo/adcolony/an$v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1949
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$v;->a:Z

    if-nez v1, :cond_1

    .line 1951
    :cond_0
    :goto_0
    return v0

    .line 1950
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1956
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 1964
    :cond_0
    :goto_0
    return v0

    .line 1958
    :cond_1
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jirbo/adcolony/an$v;->a:Z

    .line 1959
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$v;->a:Z

    if-eqz v1, :cond_0

    .line 1961
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$v;->b:Ljava/lang/String;

    .line 1962
    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/an$v;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 1969
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->c:Lcom/jirbo/adcolony/ao;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$v;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    return-void
.end method
