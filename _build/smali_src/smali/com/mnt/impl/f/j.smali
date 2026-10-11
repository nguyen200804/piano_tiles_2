.class public final Lcom/mnt/impl/f/j;
.super Lcom/mnt/impl/b/e;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/mnt/impl/f/d$a;

.field private f:Lcom/mnt/impl/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/mnt/impl/e;->cZ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/mnt/impl/f/d$a;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mnt/impl/b/e;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mnt/impl/f/j;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/mnt/impl/f/j;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/mnt/impl/f/j;->c:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/mnt/impl/f/j;->d:I

    .line 35
    iput-object p5, p0, Lcom/mnt/impl/f/j;->e:Lcom/mnt/impl/f/d$a;

    .line 36
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 7

    .prologue
    const/16 v0, 0x1388

    .line 45
    new-instance v2, Lcom/mnt/impl/f/n;

    iget-object v1, p0, Lcom/mnt/impl/f/j;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/mnt/impl/f/j;->b:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/mnt/impl/f/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mnt/impl/f/j;->c:Ljava/lang/String;

    .line 1125
    iput-object v1, v2, Lcom/mnt/impl/f/n;->H:Ljava/lang/String;

    .line 45
    iget v1, p0, Lcom/mnt/impl/f/j;->d:I

    .line 1130
    iput v1, v2, Lcom/mnt/impl/f/n;->I:I

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 49
    iget-object v1, p0, Lcom/mnt/impl/f/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;)Lcom/mnt/impl/e/g;

    move-result-object v3

    .line 50
    if-eqz v3, :cond_3

    .line 1313
    iget v1, v3, Lcom/mnt/impl/e/g;->d:I

    .line 1317
    iget v0, v3, Lcom/mnt/impl/e/g;->e:I

    .line 54
    :goto_0
    new-instance v3, Lcom/mnt/impl/f/e;

    invoke-direct {v3}, Lcom/mnt/impl/f/e;-><init>()V

    sget-object v6, Lcom/mnt/impl/e;->da:Ljava/lang/String;

    invoke-static {v6}, Lcom/mnt/impl/f/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mnt/impl/f/n;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3, v6, v2, v1, v0}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/util/Map;II)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 58
    iget-object v0, p0, Lcom/mnt/impl/f/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    .line 2275
    iget-object v0, v0, Lcom/mnt/impl/j/b;->m:Lcom/mnt/impl/j/b$a;

    .line 58
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/mnt/impl/j/b$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v4, p0, Lcom/mnt/impl/f/j;->a:Landroid/content/Context;

    sget-object v5, Lcom/mnt/impl/e;->db:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mnt/impl/e;->dc:Ljava/lang/String;

    :goto_1
    invoke-static {v4, v5, v0, v2, v3}, Lcom/mnt/impl/i/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 63
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Lcom/mnt/impl/e/g;

    invoke-direct {v0, v1}, Lcom/mnt/impl/e/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mnt/impl/f/j;->f:Lcom/mnt/impl/e/g;

    .line 66
    iget-object v0, p0, Lcom/mnt/impl/f/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mnt/impl/f/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;)Lcom/mnt/impl/e/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mnt/impl/k/a;->a(Landroid/content/Context;Lcom/mnt/impl/e/g;)V

    .line 70
    :goto_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 59
    :cond_1
    sget-object v0, Lcom/mnt/impl/e;->db:Ljava/lang/String;

    goto :goto_1

    .line 68
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mnt/impl/f/j;->f:Lcom/mnt/impl/e/g;

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mnt/impl/f/j;->e:Lcom/mnt/impl/f/d$a;

    iget-object v1, p0, Lcom/mnt/impl/f/j;->f:Lcom/mnt/impl/e/g;

    invoke-interface {v0, v1}, Lcom/mnt/impl/f/d$a;->a(Lcom/mnt/impl/e/g;)V

    .line 41
    return-void
.end method
