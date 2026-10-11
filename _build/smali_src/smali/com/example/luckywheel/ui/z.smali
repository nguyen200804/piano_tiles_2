.class Lcom/example/luckywheel/ui/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/example/luckywheel/ui/LuckyWheelActivity;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/LuckyWheelActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/z;->c:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    iput p2, p0, Lcom/example/luckywheel/ui/z;->a:I

    iput p3, p0, Lcom/example/luckywheel/ui/z;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/ui/z;->c:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    iget v1, p0, Lcom/example/luckywheel/ui/z;->a:I

    iget v2, p0, Lcom/example/luckywheel/ui/z;->b:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->b(Lcom/example/luckywheel/ui/LuckyWheelActivity;I)I

    iget-object v0, p0, Lcom/example/luckywheel/ui/z;->c:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    iget v1, p0, Lcom/example/luckywheel/ui/z;->a:I

    invoke-static {v0, v1}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->c(Lcom/example/luckywheel/ui/LuckyWheelActivity;I)I

    const-string v0, "liufan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newBalance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/example/luckywheel/ui/z;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAwardPoints = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/example/luckywheel/ui/z;->c:Lcom/example/luckywheel/ui/LuckyWheelActivity;

    invoke-static {v2}, Lcom/example/luckywheel/ui/LuckyWheelActivity;->f(Lcom/example/luckywheel/ui/LuckyWheelActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
