.class Lcom/cmcm/dmc/sdk/a/b$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/a/b$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/a/b$a;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/b$a$1;->a:Lcom/cmcm/dmc/sdk/a/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$a$1;->a:Lcom/cmcm/dmc/sdk/a/b$a;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/b$a$1;->a:Lcom/cmcm/dmc/sdk/a/b$a;

    invoke-virtual {v1}, Lcom/cmcm/dmc/sdk/a/b$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/a/b$a;->a(Ljava/lang/String;)V

    return-void
.end method
