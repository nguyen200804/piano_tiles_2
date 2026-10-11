.class public abstract Lcom/cmcm/dmc/sdk/e/a;
.super Lcom/cmcm/dmc/sdk/e/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/b;-><init>()V

    return-void
.end method

.method private i()V
    .locals 5

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/a;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ge v3, v2, :cond_1

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/a;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/a;->c()V

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/e/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-super {p0}, Lcom/cmcm/dmc/sdk/e/b;->a()V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/a;->i()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/cmcm/dmc/sdk/e/b;->b()V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/e/a;->i()V

    return-void
.end method

.method protected abstract c()V
.end method
