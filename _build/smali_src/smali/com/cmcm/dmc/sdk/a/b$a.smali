.class Lcom/cmcm/dmc/sdk/a/b$a;
.super Lcom/cmcm/dmc/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/a/b;

.field private b:Ljava/io/ByteArrayOutputStream;

.field private c:Lcom/cmcm/dmc/sdk/a/l;

.field private d:I


# direct methods
.method private constructor <init>(Lcom/cmcm/dmc/sdk/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/b$a;->a:Lcom/cmcm/dmc/sdk/a/b;

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/d/a;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->b:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/dmc/sdk/a/b;Lcom/cmcm/dmc/sdk/a/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/a/b$a;-><init>(Lcom/cmcm/dmc/sdk/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {p0, p1}, Lcom/cmcm/dmc/sdk/a/b$a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->d:I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/a/b$a;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/cmcm/dmc/sdk/a/b$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->c:Lcom/cmcm/dmc/sdk/a/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcm/dmc/sdk/a/l;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/a/b$a;->a:Lcom/cmcm/dmc/sdk/a/b;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/b;->e(Lcom/cmcm/dmc/sdk/a/b;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cmcm/dmc/sdk/a/l;-><init>(ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->c:Lcom/cmcm/dmc/sdk/a/l;

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->c:Lcom/cmcm/dmc/sdk/a/l;

    new-instance v1, Lcom/cmcm/dmc/sdk/a/b$a$1;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/a/b$a$1;-><init>(Lcom/cmcm/dmc/sdk/a/b$a;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmcm/dmc/sdk/a/l;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/dmc/sdk/a/b$a;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->d:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/net/HttpURLConnection;)Z
    .locals 2

    const-string v0, "Charset"

    const-string v1, "utf8"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/cmcm/dmc/sdk/d/a;->a(Ljava/net/HttpURLConnection;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/net/HttpURLConnection;[BII)Z
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/b$a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/cmcm/dmc/sdk/d/a;->a(Ljava/net/HttpURLConnection;[BII)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
