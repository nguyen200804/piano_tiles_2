.class final Lcom/mopub/dg/e/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mopub/dg/adapi/AdData;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/dg/e/a/a/n;->a:Lcom/mopub/dg/adapi/AdData;

    iput-object p2, p0, Lcom/mopub/dg/e/a/a/n;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/mopub/dg/e/a/a/n;->a:Lcom/mopub/dg/adapi/AdData;

    iget-object v1, p0, Lcom/mopub/dg/e/a/a/n;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/dg/e/a/a/l;->b(Lcom/mopub/dg/adapi/AdData;Landroid/content/Context;)V

    return-void
.end method
