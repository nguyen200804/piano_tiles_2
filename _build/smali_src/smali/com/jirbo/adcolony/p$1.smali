.class Lcom/jirbo/adcolony/p$1;
.super Lcom/jirbo/adcolony/aj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/p;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/p;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/p;Lcom/jirbo/adcolony/af;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/jirbo/adcolony/p$1;->a:Lcom/jirbo/adcolony/p;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/aj;-><init>(Lcom/jirbo/adcolony/af;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/jirbo/adcolony/p$1;->a:Lcom/jirbo/adcolony/p;

    iget-object v0, v0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/p$1;->n:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    iget-object v1, p0, Lcom/jirbo/adcolony/p$1;->a:Lcom/jirbo/adcolony/p;

    iget-object v1, v1, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/jirbo/adcolony/p$1;->a:Lcom/jirbo/adcolony/p;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    .line 141
    :cond_0
    return-void
.end method
