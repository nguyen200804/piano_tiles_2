.class final Lcom/mopub/dg/e/a/a/b;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mopub/dg/e/a/a/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/dg/e/a/a/a;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/mopub/dg/e/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/dg/e/a/a/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
