.class public final Lcom/mopub/dg/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mopub/dg/c/k;


# instance fields
.field final synthetic a:Lcom/mopub/dg/c/l;

.field final synthetic b:Lcom/mopub/dg/c/h;


# direct methods
.method public constructor <init>(Lcom/mopub/dg/c/h;Lcom/mopub/dg/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/c/j;->b:Lcom/mopub/dg/c/h;

    iput-object p2, p0, Lcom/mopub/dg/c/j;->a:Lcom/mopub/dg/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/c/j;->b:Lcom/mopub/dg/c/h;

    iget-boolean v0, v0, Lcom/mopub/dg/c/h;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/c/j;->a:Lcom/mopub/dg/c/l;

    invoke-interface {v0, p1}, Lcom/mopub/dg/c/l;->onDataListSuccess(Ljava/util/List;)V

    iget-object v0, p0, Lcom/mopub/dg/c/j;->b:Lcom/mopub/dg/c/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mopub/dg/c/h;->c:Z

    :cond_0
    return-void
.end method
