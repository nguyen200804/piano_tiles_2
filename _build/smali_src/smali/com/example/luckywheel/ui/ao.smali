.class Lcom/example/luckywheel/ui/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/an;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/an;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/ao;->a:Lcom/example/luckywheel/ui/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/example/luckywheel/ui/ao;->a:Lcom/example/luckywheel/ui/an;

    iget-object v0, v0, Lcom/example/luckywheel/ui/an;->a:Lcom/example/luckywheel/ui/l;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/l;->a()V

    return-void
.end method
