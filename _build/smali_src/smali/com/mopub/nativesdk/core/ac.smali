.class final Lcom/mopub/nativesdk/core/ac;
.super Ljava/lang/Object;
.source "RRManager.java"

# interfaces
.implements Lcom/mopub/nativesdk/c/k;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mopub/nativesdk/core/n;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mopub/nativesdk/core/ac;->b:Lcom/mopub/nativesdk/core/n;

    iput-object p2, p0, Lcom/mopub/nativesdk/core/ac;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 135
    .line 137
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    sget-object v1, Lcom/mopub/nativesdk/core/a;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 143
    invoke-static {}, Lcom/mopub/nativesdk/core/n;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-static {}, Lcom/mopub/nativesdk/core/n;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 145
    const/4 v5, 0x3

    if-gt v1, v5, :cond_0

    .line 148
    invoke-static {}, Lcom/mopub/nativesdk/core/n;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1
    invoke-static {}, Lcom/mopub/nativesdk/core/n;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/mopub/nativesdk/core/ac;->b:Lcom/mopub/nativesdk/core/n;

    invoke-static {v1}, Lcom/mopub/nativesdk/core/n;->a(Lcom/mopub/nativesdk/core/n;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/nativesdk/a/d;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/a/d;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/nativesdk/a/b;->a(Lcom/mopub/nativesdk/a/d;)Lcom/mopub/nativesdk/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/nativesdk/a/b;->a(Ljava/lang/String;)Lcom/mopub/nativesdk/core/x;

    move-result-object v1

    .line 155
    if-nez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/mopub/nativesdk/core/ac;->b:Lcom/mopub/nativesdk/core/n;

    new-instance v2, Lcom/mopub/nativesdk/core/ad;

    invoke-direct {v2, p0, v0}, Lcom/mopub/nativesdk/core/ad;-><init>(Lcom/mopub/nativesdk/core/ac;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;Lcom/mopub/nativesdk/core/w;)V

    move v2, v3

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativesdk/core/ac;->b:Lcom/mopub/nativesdk/core/n;

    iget-object v2, p0, Lcom/mopub/nativesdk/core/ac;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mopub/nativesdk/core/x;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/mopub/nativesdk/core/x;->d()J

    move-result-wide v6

    invoke-static {v0, v2, v5, v6, v7}, Lcom/mopub/nativesdk/core/n;->a(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;Ljava/lang/String;J)V

    move v0, v3

    :goto_1
    move v2, v0

    .line 183
    goto :goto_0

    .line 184
    :cond_3
    if-eqz v2, :cond_4

    .line 185
    sput-object p1, Lcom/mopub/nativesdk/core/a;->c:Ljava/util/Map;

    .line 188
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_1
.end method
