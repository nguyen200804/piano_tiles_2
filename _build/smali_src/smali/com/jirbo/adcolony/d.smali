.class public Lcom/jirbo/adcolony/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/jirbo/adcolony/af;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/io/File;

.field f:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/jirbo/adcolony/af;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jirbo/adcolony/d;->a:Lcom/jirbo/adcolony/af;

    .line 30
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)D
    .locals 4

    .prologue
    .line 123
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 125
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 126
    mul-long/2addr v0, v2

    .line 127
    long-to-double v0, v0

    .line 131
    :goto_0
    return-wide v0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method a()V
    .locals 4

    .prologue
    .line 34
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Configuring storage"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 50
    sget-object v0, Lcom/jirbo/adcolony/al;->b:Lcom/jirbo/adcolony/al;

    const-string v1, "Using internal storage:"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jirbo/adcolony/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->b:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->c:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 56
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->e:Ljava/io/File;

    .line 58
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 61
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const-string v0, "Cannot create media folder."

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4174000000000000L    # 2.097152E7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enough space to store temporary files ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/d;->a(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes available)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jirbo/adcolony/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adc/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->d:Ljava/lang/String;

    .line 78
    sget v0, Lcom/jirbo/adcolony/t;->e:I

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->d:Ljava/lang/String;

    .line 80
    :cond_3
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Internal data path: "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 82
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/jirbo/adcolony/d;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/d;->f:Ljava/io/File;

    .line 83
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 86
    new-instance v0, Lcom/jirbo/adcolony/ag;

    const-string v1, "iap_cache.txt"

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/ag;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Lcom/jirbo/adcolony/ag;->c()V

    .line 92
    sget-object v1, Lcom/jirbo/adcolony/t;->X:Lcom/jirbo/adcolony/a$c;

    invoke-static {v0, v1}, Lcom/jirbo/adcolony/ak;->a(Lcom/jirbo/adcolony/ag;Lcom/jirbo/adcolony/a$c;)V

    goto/16 :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->f:Ljava/io/File;

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 103
    iget-object v0, p0, Lcom/jirbo/adcolony/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/jirbo/adcolony/t;->E:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 109
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/jirbo/adcolony/f;->d()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
