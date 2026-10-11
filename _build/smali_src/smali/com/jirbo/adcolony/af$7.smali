.class Lcom/jirbo/adcolony/af$7;
.super Lcom/jirbo/adcolony/aj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jirbo/adcolony/af;->a(ZLcom/jirbo/adcolony/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/jirbo/adcolony/g;

.field final synthetic d:Lcom/jirbo/adcolony/af;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/af;Lcom/jirbo/adcolony/af;Ljava/lang/String;ILcom/jirbo/adcolony/g;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/jirbo/adcolony/af$7;->d:Lcom/jirbo/adcolony/af;

    iput-object p3, p0, Lcom/jirbo/adcolony/af$7;->a:Ljava/lang/String;

    iput p4, p0, Lcom/jirbo/adcolony/af$7;->b:I

    iput-object p5, p0, Lcom/jirbo/adcolony/af$7;->c:Lcom/jirbo/adcolony/g;

    invoke-direct {p0, p2}, Lcom/jirbo/adcolony/aj;-><init>(Lcom/jirbo/adcolony/af;)V

    return-void
.end method


# virtual methods
.method b()V
    .locals 4

    .prologue
    .line 200
    new-instance v0, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$g;-><init>()V

    .line 201
    const-string v1, "v4vc_name"

    iget-object v2, p0, Lcom/jirbo/adcolony/af$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "v4vc_amount"

    iget v2, p0, Lcom/jirbo/adcolony/af$7;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;I)V

    .line 203
    iget-object v1, p0, Lcom/jirbo/adcolony/af$7;->n:Lcom/jirbo/adcolony/af;

    iget-object v1, v1, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    const-string v2, "reward_v4vc"

    iget-object v3, p0, Lcom/jirbo/adcolony/af$7;->c:Lcom/jirbo/adcolony/g;

    invoke-virtual {v1, v2, v0, v3}, Lcom/jirbo/adcolony/as;->a(Ljava/lang/String;Lcom/jirbo/adcolony/a$g;Lcom/jirbo/adcolony/g;)V

    .line 204
    return-void
.end method
