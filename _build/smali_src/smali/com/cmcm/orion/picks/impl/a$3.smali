.class final Lcom/cmcm/orion/picks/impl/a$3;
.super Ljava/lang/Object;
.source "BrandVCAdMaterialLoader.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/b/a;

.field final synthetic b:Lcom/cmcm/orion/picks/a/a/a;

.field final synthetic c:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/picks/impl/a$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a$3;->a:Lcom/cmcm/orion/picks/b/a;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a$3;->b:Lcom/cmcm/orion/picks/a/a/a;

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/a$3;->c:Lcom/cmcm/orion/picks/impl/a$a;

    iput-object p4, p0, Lcom/cmcm/orion/picks/impl/a$3;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/cmcm/orion/picks/impl/a$3;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/cmcm/orion/picks/impl/a$3;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 193
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {p2}, Lcom/cmcm/orion/picks/impl/i;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cmcm/orion/picks/impl/h;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Lcom/cmcm/orion/picks/impl/h;

    .line 197
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/h;->m(Ljava/lang/String;)Z

    move-result v1

    .line 198
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vast:model has expired:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",key ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/a$1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$3;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v2, Lcom/cmcm/orion/adsdk/b$a;->k:Lcom/cmcm/orion/adsdk/b$a;

    invoke-virtual {v1, v2, v6, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 202
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$3;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v2, Lcom/cmcm/orion/adsdk/b$a;->l:Lcom/cmcm/orion/adsdk/b$a;

    invoke-virtual {v1, v2, v6, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 203
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/h;->g(Z)V

    .line 204
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$3;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/h;->a(Lcom/cmcm/orion/picks/a/a/a;)V

    .line 206
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$3;->c:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-interface {v1, v0}, Lcom/cmcm/orion/picks/impl/a$a;->a(Lcom/cmcm/orion/picks/impl/h;)V

    .line 259
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vast:to remove this key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/a$1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->q()I

    move-result v0

    const/16 v1, 0x50

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$3;->a:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/a;->a(Landroid/content/Context;Lcom/cmcm/orion/picks/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a;->a()Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3;->c:Lcom/cmcm/orion/picks/impl/a$a;

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->a:Lcom/cmcm/orion/adsdk/d;

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/impl/a$a;->a(Lcom/cmcm/orion/adsdk/d;)V

    .line 219
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->m:Lcom/cmcm/orion/adsdk/b$a;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a$3;->a:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->k:Lcom/cmcm/orion/adsdk/b$a;

    invoke-virtual {v0, v1, v6, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 224
    new-instance v0, Lcom/cmcm/orion/picks/impl/j;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/impl/j;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$3;->b:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/j;->a(Lcom/cmcm/orion/picks/a/a/a;)V

    .line 226
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a$3;->e:Ljava/lang/String;

    new-instance v2, Lcom/cmcm/orion/picks/impl/a$3$1;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/picks/impl/a$3$1;-><init>(Lcom/cmcm/orion/picks/impl/a$3;)V

    .line 1060
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/j;->a()V

    .line 1061
    new-instance v3, Lcom/cmcm/orion/picks/impl/j$2;

    invoke-direct {v3, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/j$2;-><init>(Lcom/cmcm/orion/picks/impl/j;Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V

    invoke-static {v3}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
