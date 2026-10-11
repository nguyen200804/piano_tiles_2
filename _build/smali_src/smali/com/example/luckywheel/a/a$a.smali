.class Lcom/example/luckywheel/a/a$a;
.super Lcom/example/luckywheel/a/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/luckywheel/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/example/luckywheel/a/a;


# direct methods
.method public constructor <init>(Lcom/example/luckywheel/a/a;Lcom/example/luckywheel/a/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/example/luckywheel/a/a$a;->a:Lcom/example/luckywheel/a/a;

    invoke-direct {p0, p2}, Lcom/example/luckywheel/a/g$c;-><init>(Lcom/example/luckywheel/a/g$b;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;JLjava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/example/luckywheel/a/a$a;->a:Lcom/example/luckywheel/a/a;

    invoke-virtual {v0, p6}, Lcom/example/luckywheel/a/a;->a(Ljava/io/InputStream;)Lcom/example/luckywheel/a/i;

    move-result-object v0

    invoke-static {}, Lcom/example/luckywheel/a/a;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/example/luckywheel/a/i;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/example/luckywheel/a/a$a;->a:Lcom/example/luckywheel/a/a;

    invoke-static {v1}, Lcom/example/luckywheel/a/a;->a(Lcom/example/luckywheel/a/a;)Lcom/example/luckywheel/a/j;

    move-result-object v1

    invoke-virtual {v0}, Lcom/example/luckywheel/a/i;->c()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/example/luckywheel/a/j;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/example/luckywheel/a/g$c;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    return-void
.end method
