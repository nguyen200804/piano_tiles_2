.class final Lcom/mopub/dg/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/dg/d/m;


# instance fields
.field final synthetic a:Lcom/mopub/dg/c/e;


# direct methods
.method constructor <init>(Lcom/mopub/dg/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/c/f;->a:Lcom/mopub/dg/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "Request onFailure"

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mopub/dg/c/f;->a:Lcom/mopub/dg/c/e;

    iget-object v0, v0, Lcom/mopub/dg/c/e;->d:Lcom/mopub/dg/c/a;

    invoke-static {v0}, Lcom/mopub/dg/c/a;->b(Lcom/mopub/dg/c/a;)Z

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5

    invoke-static {p1}, Lcom/mopub/dg/d/k;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/dg/c/f;->a:Lcom/mopub/dg/c/e;

    iget-object v1, v1, Lcom/mopub/dg/c/e;->d:Lcom/mopub/dg/c/a;

    iget-object v2, p0, Lcom/mopub/dg/c/f;->a:Lcom/mopub/dg/c/e;

    iget-object v2, v2, Lcom/mopub/dg/c/e;->d:Lcom/mopub/dg/c/a;

    iget-object v3, p0, Lcom/mopub/dg/c/f;->a:Lcom/mopub/dg/c/e;

    iget-boolean v3, v3, Lcom/mopub/dg/c/e;->a:Z

    iget-object v4, p0, Lcom/mopub/dg/c/f;->a:Lcom/mopub/dg/c/e;

    iget-boolean v4, v4, Lcom/mopub/dg/c/e;->b:Z

    invoke-static {v2, v0, v3, v4}, Lcom/mopub/dg/c/a;->a(Lcom/mopub/dg/c/a;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mopub/dg/c/a;->a(Lcom/mopub/dg/c/a;Ljava/util/List;)Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request onResponse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/dg/c/f;->a:Lcom/mopub/dg/c/e;

    iget-object v1, v1, Lcom/mopub/dg/c/e;->d:Lcom/mopub/dg/c/a;

    invoke-static {v1}, Lcom/mopub/dg/c/a;->a(Lcom/mopub/dg/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/dg/d/n;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mopub/dg/c/f;->a:Lcom/mopub/dg/c/e;

    iget-object v0, v0, Lcom/mopub/dg/c/e;->c:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/mopub/dg/c/f;->a:Lcom/mopub/dg/c/e;

    iget-object v0, v0, Lcom/mopub/dg/c/e;->d:Lcom/mopub/dg/c/a;

    invoke-static {v0}, Lcom/mopub/dg/c/a;->b(Lcom/mopub/dg/c/a;)Z

    return-void
.end method
