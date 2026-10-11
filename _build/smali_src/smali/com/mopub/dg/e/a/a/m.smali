.class final Lcom/mopub/dg/e/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/dg/d/m;


# instance fields
.field final synthetic a:Lcom/mopub/dg/e/a/a/l;


# direct methods
.method constructor <init>(Lcom/mopub/dg/e/a/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/m;->a:Lcom/mopub/dg/e/a/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2

    invoke-static {p1}, Lcom/mopub/dg/d/k;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/mopub/dg/e/a/a/m;->a:Lcom/mopub/dg/e/a/a/l;

    invoke-static {v1, v0}, Lcom/mopub/dg/e/a/a/l;->a(Lcom/mopub/dg/e/a/a/l;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/m;->a:Lcom/mopub/dg/e/a/a/l;

    invoke-virtual {v1, v0}, Lcom/mopub/dg/e/a/a/l;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
