.class final Lcom/mopub/nativesdk/b/o;
.super Ljava/lang/Object;
.source "WEngine.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativesdk/b/o;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/mopub/nativesdk/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/mopub/nativesdk/b/o;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativesdk/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/mopub/nativesdk/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 291
    invoke-static {v0}, Lcom/mopub/nativesdk/d/s;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mopub/nativesdk/b/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3}, Lcom/mopub/nativesdk/d/s;->a(ILjava/lang/Runnable;J)V

    .line 286
    return-void
.end method
