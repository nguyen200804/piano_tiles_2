.class final Lcom/mopub/nativesdk/core/u;
.super Ljava/lang/Object;
.source "BTManager.java"

# interfaces
.implements Lcom/mopub/nativesdk/c/l;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/core/j;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/core/j;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mopub/nativesdk/core/u;->a:Lcom/mopub/nativesdk/core/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 206
    check-cast p1, Ljava/util/List;

    .line 207
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BTManager 2  load: OnLoadFinish: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v0, p0, Lcom/mopub/nativesdk/core/u;->a:Lcom/mopub/nativesdk/core/j;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/u;->a:Lcom/mopub/nativesdk/core/j;

    invoke-static {v1}, Lcom/mopub/nativesdk/core/j;->a(Lcom/mopub/nativesdk/core/j;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/mopub/nativesdk/core/j;->a(Lcom/mopub/nativesdk/core/j;I)I

    .line 218
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/mopub/nativesdk/core/u;->a:Lcom/mopub/nativesdk/core/j;

    iget-object v0, v0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/mopub/nativesdk/core/u;->a:Lcom/mopub/nativesdk/core/j;

    iget-object v0, v0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 220
    iget-object v0, p0, Lcom/mopub/nativesdk/core/u;->a:Lcom/mopub/nativesdk/core/j;

    iget-object v0, v0, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    .line 221
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v1}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/mopub/nativesdk/Campaign;->getId()J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 222
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativesdk/core/u;->a:Lcom/mopub/nativesdk/core/j;

    invoke-static {v0}, Lcom/mopub/nativesdk/core/j;->b(Lcom/mopub/nativesdk/core/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativesdk/a/d;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativesdk/a/b;->a(Lcom/mopub/nativesdk/a/d;)Lcom/mopub/nativesdk/a/b;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/mopub/nativesdk/a/b;->a()Ljava/util/List;

    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/core/x;

    .line 234
    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_3
    if-ltz v2, :cond_4

    .line 241
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativesdk/Campaign;

    invoke-virtual {v1}, Lcom/mopub/nativesdk/Campaign;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 240
    :cond_5
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_3

    .line 251
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/Campaign;

    .line 252
    iget-object v2, p0, Lcom/mopub/nativesdk/core/u;->a:Lcom/mopub/nativesdk/core/j;

    iget-object v2, v2, Lcom/mopub/nativesdk/core/j;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 261
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BTManager 2  load: OnLoadFinish: save: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    :cond_8
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method
