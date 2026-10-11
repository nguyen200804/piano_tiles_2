.class Lcom/jirbo/adcolony/aw;
.super Lcom/jirbo/adcolony/y;
.source "SourceFile"


# instance fields
.field c:Ljava/lang/String;

.field d:Ljava/io/OutputStream;

.field e:[B

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/jirbo/adcolony/y;-><init>()V

    .line 12
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jirbo/adcolony/aw;->e:[B

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/aw;->f:I

    .line 19
    iput-object p1, p0, Lcom/jirbo/adcolony/aw;->c:Ljava/lang/String;

    .line 21
    sget v0, Lcom/jirbo/adcolony/t;->e:I

    if-eqz v0, :cond_0

    .line 23
    const/16 v0, 0x17

    iput v0, p0, Lcom/jirbo/adcolony/aw;->h:I

    .line 24
    iget v0, p0, Lcom/jirbo/adcolony/aw;->h:I

    iput v0, p0, Lcom/jirbo/adcolony/aw;->g:I

    .line 29
    :cond_0
    :try_start_0
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->f:Lcom/jirbo/adcolony/d;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->f:Lcom/jirbo/adcolony/d;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/d;->b()V

    .line 30
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/aw;->d:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/aw;->a(Ljava/io/IOException;)V

    goto :goto_0
.end method


# virtual methods
.method a(C)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/jirbo/adcolony/aw;->e:[B

    iget v1, p0, Lcom/jirbo/adcolony/aw;->f:I

    iget v2, p0, Lcom/jirbo/adcolony/aw;->g:I

    xor-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 47
    iget v0, p0, Lcom/jirbo/adcolony/aw;->g:I

    iget v1, p0, Lcom/jirbo/adcolony/aw;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jirbo/adcolony/aw;->g:I

    .line 48
    iget v0, p0, Lcom/jirbo/adcolony/aw;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jirbo/adcolony/aw;->f:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/aw;->c()V

    .line 49
    :cond_0
    return-void
.end method

.method a(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "Error writing \""

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/aw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 90
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 93
    invoke-virtual {p0}, Lcom/jirbo/adcolony/aw;->d()V

    .line 94
    return-void
.end method

.method c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    iget v0, p0, Lcom/jirbo/adcolony/aw;->f:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/aw;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/aw;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/jirbo/adcolony/aw;->e:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/jirbo/adcolony/aw;->f:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/aw;->f:I

    .line 59
    iget-object v0, p0, Lcom/jirbo/adcolony/aw;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 63
    iput v4, p0, Lcom/jirbo/adcolony/aw;->f:I

    .line 64
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/aw;->a(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/jirbo/adcolony/aw;->c()V

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/aw;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/jirbo/adcolony/aw;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jirbo/adcolony/aw;->d:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    iput-object v1, p0, Lcom/jirbo/adcolony/aw;->d:Ljava/io/OutputStream;

    .line 83
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/aw;->a(Ljava/io/IOException;)V

    goto :goto_0
.end method
