.class Lcom/cmcm/dmc/sdk/g/j$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cmcm/dmc/sdk/g/h;

.field final synthetic c:Lcom/cmcm/dmc/sdk/g/j;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/g/j;ZLcom/cmcm/dmc/sdk/g/h;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/j$3;->c:Lcom/cmcm/dmc/sdk/g/j;

    iput-boolean p2, p0, Lcom/cmcm/dmc/sdk/g/j$3;->a:Z

    iput-object p3, p0, Lcom/cmcm/dmc/sdk/g/j$3;->b:Lcom/cmcm/dmc/sdk/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/j$3;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$3;->c:Lcom/cmcm/dmc/sdk/g/j;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/g/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cmcm/dmc/sdk/g/j;->a:Ljava/lang/String;

    const-string v1, "not init"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$3;->c:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->c(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j$3;->b:Lcom/cmcm/dmc/sdk/g/h;

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/g/g;->a(Lcom/cmcm/dmc/sdk/g/h;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cmcm/dmc/sdk/g/f;->a()Lcom/cmcm/dmc/sdk/g/f;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j$3;->b:Lcom/cmcm/dmc/sdk/g/h;

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/g/f;->a(Lcom/cmcm/dmc/sdk/g/h;)V

    goto :goto_0
.end method
