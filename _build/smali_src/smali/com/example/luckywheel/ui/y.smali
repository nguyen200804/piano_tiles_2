.class Lcom/example/luckywheel/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/example/luckywheel/ui/LuckyWheelActivity;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/y;->b:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    iput p2, p0, Lcom/example/luckywheel/ui/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "liufan"

    const-string v1, "onChanged: update mBalanceTv"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/example/luckywheel/ui/y;->b:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->e(Lcom/example/luckywheel/ui/LuckyWheelActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/y;->b:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    sget v2, Lcom/whatscall/luckywheel/R$string;->balance:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/example/luckywheel/ui/y;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/example/luckywheel/b/e;->a()Lcom/example/luckywheel/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/luckywheel/b/e;->c()I

    move-result v0

    iget-object v1, p0, Lcom/example/luckywheel/ui/y;->b:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v1, v0}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->a(Lcom/example/luckywheel/ui/LuckyWheelActivity;I)V

    return-void
.end method
