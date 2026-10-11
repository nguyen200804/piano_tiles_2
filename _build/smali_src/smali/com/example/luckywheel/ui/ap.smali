.class Lcom/example/luckywheel/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/example/luckywheel/ui/an;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/an;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/ap;->a:Lcom/example/luckywheel/ui/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/ui/ap;->a:Lcom/example/luckywheel/ui/an;

    iget-object v0, v0, Lcom/example/luckywheel/ui/an;->a:Lcom/example/luckywheel/ui/l;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/l;->dismiss()V

    iget-object v0, p0, Lcom/example/luckywheel/ui/ap;->a:Lcom/example/luckywheel/ui/an;

    iget-object v0, v0, Lcom/example/luckywheel/ui/an;->b:Lcom/example/luckywheel/ui/k;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/k;->c()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/whatscall/luckywheel/R$string;->request_exception:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
