.class Lcom/jirbo/adcolony/af$3;
.super Lcom/jirbo/adcolony/aj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/af;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jirbo/adcolony/af;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/jirbo/adcolony/af$3;->a:Lcom/jirbo/adcolony/af;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/aj;-><init>(Lcom/jirbo/adcolony/af;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jirbo/adcolony/af$3;->n:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->e:Lcom/jirbo/adcolony/at;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/at;->d()V

    .line 105
    return-void
.end method
