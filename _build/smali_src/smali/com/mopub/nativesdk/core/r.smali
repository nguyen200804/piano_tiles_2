.class final Lcom/mopub/nativesdk/core/r;
.super Ljava/lang/Object;
.source "AKService.java"

# interfaces
.implements Lcom/mopub/nativesdk/b/f;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/Campaign;

.field private synthetic b:Lcom/mopub/nativesdk/ClickListener;

.field private synthetic c:Z

.field private synthetic d:Lcom/mopub/nativesdk/core/a;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/a;Lcom/mopub/nativesdk/Campaign;Lcom/mopub/nativesdk/ClickListener;Z)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/mopub/nativesdk/core/r;->d:Lcom/mopub/nativesdk/core/a;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/r;->a:Lcom/mopub/nativesdk/Campaign;

    iput-object p3, p0, Lcom/mopub/nativesdk/core/r;->b:Lcom/mopub/nativesdk/ClickListener;

    iput-boolean p4, p0, Lcom/mopub/nativesdk/core/r;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mopub/nativesdk/b/e;)V
    .locals 6

    .prologue
    .line 686
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->f()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativesdk/core/r;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v1}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 690
    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativesdk/d/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_0

    .line 692
    sget-object v1, Lcom/mopub/nativesdk/core/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/nativesdk/core/n;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/n;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativesdk/core/r;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v2}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/nativesdk/core/r;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v3}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/core/r;->b:Lcom/mopub/nativesdk/ClickListener;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/mopub/nativesdk/core/r;->b:Lcom/mopub/nativesdk/ClickListener;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/r;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mopub/nativesdk/b/e;->d()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mopub/nativesdk/ClickListener;->onAdClicked(Lcom/mopub/nativesdk/Campaign;Ljava/lang/String;I)V

    .line 700
    :cond_1
    iget-boolean v0, p0, Lcom/mopub/nativesdk/core/r;->c:Z

    if-eqz v0, :cond_2

    .line 701
    invoke-static {p1}, Lcom/mopub/nativesdk/core/a;->a(Lcom/mopub/nativesdk/b/e;)Z

    .line 703
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/mopub/nativesdk/core/r;->b:Lcom/mopub/nativesdk/ClickListener;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/mopub/nativesdk/core/r;->b:Lcom/mopub/nativesdk/ClickListener;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/r;->a:Lcom/mopub/nativesdk/Campaign;

    invoke-interface {v0, v1, p1}, Lcom/mopub/nativesdk/ClickListener;->onAdClickFailed(Lcom/mopub/nativesdk/Campaign;Ljava/lang/String;)V

    .line 710
    :cond_0
    return-void
.end method
