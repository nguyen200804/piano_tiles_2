.class final Lcom/mopub/dg/e/a/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/p;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/mopub/dg/e/a/a/p;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/p;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/p;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/dg/e/a/a/l;->a(Ljava/util/ArrayList;Landroid/content/Context;)V

    return-void
.end method
