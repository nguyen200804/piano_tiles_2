.class final Lcom/mopub/dg/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/dg/d/j;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/mopub/dg/c/a;


# direct methods
.method constructor <init>(Lcom/mopub/dg/c/a;ZZLandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/c/e;->d:Lcom/mopub/dg/c/a;

    iput-boolean p2, p0, Lcom/mopub/dg/c/e;->a:Z

    iput-boolean p3, p0, Lcom/mopub/dg/c/e;->b:Z

    iput-object p4, p0, Lcom/mopub/dg/c/e;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/c/e;->d:Lcom/mopub/dg/c/a;

    invoke-static {v0}, Lcom/mopub/dg/c/a;->c(Lcom/mopub/dg/c/a;)Lcom/mopub/dg/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/dg/b/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mopub/dg/c/f;

    invoke-direct {v1, p0}, Lcom/mopub/dg/c/f;-><init>(Lcom/mopub/dg/c/e;)V

    invoke-static {v0, v1}, Lcom/mopub/dg/d/k;->a(Ljava/lang/String;Lcom/mopub/dg/d/m;)V

    return-void
.end method
