.class Lcom/jirbo/adcolony/an$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/jirbo/adcolony/a$g;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return v6

    .line 128
    :cond_0
    const-string v0, "update"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$m;->a:Ljava/lang/String;

    .line 129
    const-string v0, "install"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$m;->b:Ljava/lang/String;

    .line 130
    const-string v0, "dynamic_interests"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$m;->c:Ljava/lang/String;

    .line 131
    const-string v0, "user_meta_data"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$m;->d:Ljava/lang/String;

    .line 132
    const-string v0, "in_app_purchase"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$m;->e:Ljava/lang/String;

    .line 133
    const-string v0, "session_end"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$m;->g:Ljava/lang/String;

    .line 134
    const-string v0, "session_start"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$m;->f:Ljava/lang/String;

    .line 137
    new-instance v0, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$g;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$m;->h:Lcom/jirbo/adcolony/a$g;

    .line 138
    iget-object v0, p0, Lcom/jirbo/adcolony/an$m;->h:Lcom/jirbo/adcolony/a$g;

    const-string v1, "update"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/jirbo/adcolony/an$m;->h:Lcom/jirbo/adcolony/a$g;

    const-string v1, "install"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/jirbo/adcolony/an$m;->h:Lcom/jirbo/adcolony/a$g;

    const-string v1, "dynamic_interests"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/jirbo/adcolony/an$m;->h:Lcom/jirbo/adcolony/a$g;

    const-string v1, "user_meta_data"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/jirbo/adcolony/an$m;->h:Lcom/jirbo/adcolony/a$g;

    const-string v1, "in_app_purchase"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/jirbo/adcolony/an$m;->h:Lcom/jirbo/adcolony/a$g;

    const-string v1, "session_end"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/an$m;->h:Lcom/jirbo/adcolony/a$g;

    const-string v1, "session_start"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/jirbo/adcolony/ag;

    const-string v0, "iap_cache.txt"

    invoke-direct {v1, v0}, Lcom/jirbo/adcolony/ag;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {v1}, Lcom/jirbo/adcolony/ak;->c(Lcom/jirbo/adcolony/ag;)Lcom/jirbo/adcolony/a$c;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_2

    .line 151
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lcom/jirbo/adcolony/a$c;->f_()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 154
    new-instance v3, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v3}, Lcom/jirbo/adcolony/a$g;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/jirbo/adcolony/a$c;->a(ILcom/jirbo/adcolony/a$g;)Lcom/jirbo/adcolony/a$g;

    move-result-object v3

    .line 155
    sget-object v4, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v4, v4, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    const-string v5, "in_app_purchase"

    invoke-virtual {v4, v5, v3}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_1
    invoke-virtual {v1}, Lcom/jirbo/adcolony/ag;->c()V

    .line 160
    sget-object v0, Lcom/jirbo/adcolony/t;->X:Lcom/jirbo/adcolony/a$c;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/a$c;->j()V

    .line 163
    :cond_2
    sput-boolean v6, Lcom/jirbo/adcolony/t;->D:Z

    goto/16 :goto_0
.end method
