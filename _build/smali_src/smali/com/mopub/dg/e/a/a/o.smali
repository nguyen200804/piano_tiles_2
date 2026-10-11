.class final Lcom/mopub/dg/e/a/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mopub/dg/e/a/a/l;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mopub/dg/e/a/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mopub/dg/e/a/a/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/dg/e/a/a/o;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/mopub/dg/e/a/a/o;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/mopub/dg/e/a/a/o;->e:Lcom/mopub/dg/e/a/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lcom/mopub/dg/e/a/a/i;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/dg/e/a/a/o;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mopub/dg/e/a/a/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/o;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/mopub/dg/e/a/a/i;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/o;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/mopub/dg/e/a/a/i;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mopub/dg/e/a/a/i;->c:Z

    invoke-virtual {v0}, Lcom/mopub/dg/e/a/a/i;->a()V

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/o;->e:Lcom/mopub/dg/e/a/a/l;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/o;->c:Ljava/lang/String;

    const-string v2, "InitName"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
