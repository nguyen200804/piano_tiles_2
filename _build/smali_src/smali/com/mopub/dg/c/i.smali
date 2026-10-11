.class public final Lcom/mopub/dg/c/i;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/mopub/dg/c/l;

.field final synthetic b:Lcom/mopub/dg/c/h;


# direct methods
.method public constructor <init>(Lcom/mopub/dg/c/h;Lcom/mopub/dg/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/c/i;->b:Lcom/mopub/dg/c/h;

    iput-object p2, p0, Lcom/mopub/dg/c/i;->a:Lcom/mopub/dg/c/l;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/c/i;->b:Lcom/mopub/dg/c/h;

    iget-boolean v0, v0, Lcom/mopub/dg/c/h;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/c/i;->a:Lcom/mopub/dg/c/l;

    invoke-interface {v0}, Lcom/mopub/dg/c/l;->onDataFail()V

    iget-object v0, p0, Lcom/mopub/dg/c/i;->b:Lcom/mopub/dg/c/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mopub/dg/c/h;->d:Z

    :cond_0
    return-void
.end method
