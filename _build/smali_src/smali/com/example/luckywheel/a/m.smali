.class Lcom/example/luckywheel/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/a/e;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/a/m;->a:Lcom/example/luckywheel/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/example/luckywheel/a/m;->a:Lcom/example/luckywheel/a/e;

    iget-object v1, p0, Lcom/example/luckywheel/a/m;->a:Lcom/example/luckywheel/a/e;

    invoke-static {v1}, Lcom/example/luckywheel/a/e;->a(Lcom/example/luckywheel/a/e;)Lcom/example/luckywheel/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/luckywheel/a/e;->a(Lcom/example/luckywheel/a/j;)V

    iget-object v0, p0, Lcom/example/luckywheel/a/m;->a:Lcom/example/luckywheel/a/e;

    invoke-virtual {v0}, Lcom/example/luckywheel/a/e;->c()V

    return-void
.end method
