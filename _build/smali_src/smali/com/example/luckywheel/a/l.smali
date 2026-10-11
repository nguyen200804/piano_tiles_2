.class Lcom/example/luckywheel/a/l;
.super Lcom/example/luckywheel/a/a$a;


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/example/luckywheel/a/a;


# direct methods
.method constructor <init>(Lcom/example/luckywheel/a/a;Lcom/example/luckywheel/a/g$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/a/l;->e:Lcom/example/luckywheel/a/a;

    iput-object p3, p0, Lcom/example/luckywheel/a/l;->d:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/example/luckywheel/a/a$a;-><init>(Lcom/example/luckywheel/a/a;Lcom/example/luckywheel/a/g$b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "application/json"

    iget-object v1, p0, Lcom/example/luckywheel/a/l;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/example/luckywheel/a/g;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
