.class Lcom/jirbo/adcolony/af$8;
.super Lcom/jirbo/adcolony/aj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/af;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/jirbo/adcolony/g;

.field final synthetic d:Lcom/jirbo/adcolony/af;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;Ljava/lang/String;Ljava/lang/String;Lcom/jirbo/adcolony/g;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/jirbo/adcolony/af$8;->d:Lcom/jirbo/adcolony/af;

    iput-object p3, p0, Lcom/jirbo/adcolony/af$8;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/jirbo/adcolony/af$8;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/jirbo/adcolony/af$8;->c:Lcom/jirbo/adcolony/g;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/aj;-><init>(Lcom/jirbo/adcolony/af;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jirbo/adcolony/af$8;->n:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    iget-object v1, p0, Lcom/jirbo/adcolony/af$8;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/af$8;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/jirbo/adcolony/ak;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v2

    iget-object v3, p0, Lcom/jirbo/adcolony/af$8;->c:Lcom/jirbo/adcolony/g;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V

    .line 229
    return-void
.end method
