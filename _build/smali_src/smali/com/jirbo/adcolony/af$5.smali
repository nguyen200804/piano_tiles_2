.class Lcom/jirbo/adcolony/af$5;
.super Lcom/jirbo/adcolony/aj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/af;->a(Lcom/jirbo/adcolony/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/g;

.field final synthetic b:Lcom/jirbo/adcolony/af;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/g;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/jirbo/adcolony/af$5;->b:Lcom/jirbo/adcolony/af;

    iput-object p3, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/aj;-><init>(Lcom/jirbo/adcolony/af;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 136
    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/jirbo/adcolony/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an$w;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$a;->z:Lcom/jirbo/adcolony/an$w;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an$w;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/g;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->g:Ljava/lang/String;

    const-string v1, "fullscreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->b:Lcom/jirbo/adcolony/af;

    const-string v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"ad_slot\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v3, v3, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    iget v3, v3, Lcom/jirbo/adcolony/at;->j:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \"replay\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-boolean v3, v3, Lcom/jirbo/adcolony/g;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/af;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    .line 139
    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/an$a;->p:Z

    .line 140
    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/an$a;->q:Z

    .line 141
    invoke-static {}, Lcom/jirbo/adcolony/t;->f()V

    .line 142
    iget-object v0, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->d:Lcom/jirbo/adcolony/an$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->j:Lcom/jirbo/adcolony/a$c;

    iget-object v1, p0, Lcom/jirbo/adcolony/af$5;->a:Lcom/jirbo/adcolony/g;

    iget-object v1, v1, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v1, v1, Lcom/jirbo/adcolony/an$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/a$c;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$c;

    .line 144
    :cond_1
    return-void
.end method
