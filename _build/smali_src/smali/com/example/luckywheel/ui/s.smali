.class Lcom/example/luckywheel/ui/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/example/luckywheel/ui/h;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/example/luckywheel/ui/h;

.field final synthetic d:Lcom/example/luckywheel/ui/d;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/ui/d;IILcom/example/luckywheel/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/ui/s;->d:Lcom/example/luckywheel/ui/d;

    iput p2, p0, Lcom/example/luckywheel/ui/s;->a:I

    iput p3, p0, Lcom/example/luckywheel/ui/s;->b:I

    iput-object p4, p0, Lcom/example/luckywheel/ui/s;->c:Lcom/example/luckywheel/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/example/luckywheel/ui/s;->d:Lcom/example/luckywheel/ui/d;

    iget v1, p0, Lcom/example/luckywheel/ui/s;->a:I

    iget v2, p0, Lcom/example/luckywheel/ui/s;->b:I

    iget-object v3, p0, Lcom/example/luckywheel/ui/s;->c:Lcom/example/luckywheel/ui/h;

    invoke-static {v0, v1, v2, v3}, Lcom/example/luckywheel/ui/d;->a(Lcom/example/luckywheel/ui/d;IILcom/example/luckywheel/ui/h;)V

    return-void
.end method
