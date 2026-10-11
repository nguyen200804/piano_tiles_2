.class Lcom/jirbo/adcolony/af$6;
.super Lcom/jirbo/adcolony/aj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/af;->a(DLcom/jirbo/adcolony/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/g;

.field final synthetic b:D

.field final synthetic c:Lcom/jirbo/adcolony/af;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/g;D)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/jirbo/adcolony/af$6;->c:Lcom/jirbo/adcolony/af;

    iput-object p3, p0, Lcom/jirbo/adcolony/af$6;->a:Lcom/jirbo/adcolony/g;

    iput-wide p4, p0, Lcom/jirbo/adcolony/af$6;->b:D

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/aj;-><init>(Lcom/jirbo/adcolony/af;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 4

    .prologue
    .line 155
    sget-boolean v0, Lcom/jirbo/adcolony/t;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/af$6;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/af$6;->a:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/an$j;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/jirbo/adcolony/af$6;->b:D

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 157
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "V4VC validated."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 158
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/t;->f:Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/af$6;->n:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    iget-wide v2, p0, Lcom/jirbo/adcolony/af$6;->b:D

    iget-object v1, p0, Lcom/jirbo/adcolony/af$6;->a:Lcom/jirbo/adcolony/g;

    invoke-virtual {v0, v2, v3, v1}, Lcom/jirbo/adcolony/as;->a(DLcom/jirbo/adcolony/g;)V

    .line 161
    return-void
.end method
