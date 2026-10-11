.class public final Lcom/mopub/dg/b/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mopub/dg/b/d;)Lcom/mopub/dg/b/b;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/mopub/dg/b/d;->a:Lcom/mopub/dg/b/d;

    if-ne p1, v1, :cond_0

    new-instance v0, Lcom/mopub/dg/b/a;

    invoke-direct {v0, p0}, Lcom/mopub/dg/b/a;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method
