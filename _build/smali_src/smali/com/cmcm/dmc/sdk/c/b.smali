.class abstract Lcom/cmcm/dmc/sdk/c/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/c/b;->a:Landroid/content/Context;

    return-void
.end method

.method private h()Z
    .locals 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private i()Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/c/b;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/c/b;->d()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/c/b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/c/b;->f()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/c/b;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/c/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/c/b;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/c/b;->h()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/c/b;->i()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    invoke-virtual {p0, v1}, Lcom/cmcm/dmc/sdk/c/b;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/c/b;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method b()V
    .locals 0

    return-void
.end method

.method abstract c()Landroid/net/Uri;
.end method

.method abstract d()[Ljava/lang/String;
.end method

.method abstract e()Ljava/lang/String;
.end method

.method abstract f()[Ljava/lang/String;
.end method

.method abstract g()Ljava/lang/String;
.end method
