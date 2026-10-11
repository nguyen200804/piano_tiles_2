.class Lcom/cmcm/dmc/sdk/g/j$a$1;
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

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/j$a$1;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a$1;->a:Lcom/cmcm/dmc/sdk/g/j$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/g/j;->a(Lcom/cmcm/dmc/sdk/g/j;Z)V

    return-void
.end method
