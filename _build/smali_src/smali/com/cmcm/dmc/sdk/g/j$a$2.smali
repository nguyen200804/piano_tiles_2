.class Lcom/cmcm/dmc/sdk/g/j$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/g/j$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/g/j$a;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/g/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/j$a$2;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a$2;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->i(Lcom/cmcm/dmc/sdk/g/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/q;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a$2;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->g(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/g/i;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/d;->a()Lcom/cmcm/dmc/sdk/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/dmc/sdk/a/d;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j$a$2;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/g/j$a;->a(Lcom/cmcm/dmc/sdk/g/j$a;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/g/j$a$2;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/dmc/sdk/g/i;->a(Ljava/lang/String;Ljava/io/File;Lcom/cmcm/dmc/sdk/g/j$c;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a$2;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j$a;->b(Lcom/cmcm/dmc/sdk/g/j$a;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a$2;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->c(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j$a$2;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/g/j$a;->c(Lcom/cmcm/dmc/sdk/g/j$a;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/g;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method
