.class public Lcom/example/luckywheel/ui/j;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field private static d:Lcom/example/luckywheel/ui/j;


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/luckywheel/ui/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:[I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, -0x18a0

    sput v0, Lcom/example/luckywheel/ui/j;->a:I

    const/4 v0, -0x1

    sput v0, Lcom/example/luckywheel/ui/j;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/example/luckywheel/ui/j;->f:[I

    sget v0, Lcom/example/luckywheel/ui/j;->b:I

    iput v0, p0, Lcom/example/luckywheel/ui/j;->h:I

    iput-object p1, p0, Lcom/example/luckywheel/ui/j;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/j;->a()V

    return-void

    nop

    :array_0
    .array-data 4
        0x12c
        0xc8
        0x14
        0x64
        0x32
        0x1f4
        0x0
        0xa
    .end array-data
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/example/luckywheel/ui/j;
    .locals 2

    const-class v1, Lcom/example/luckywheel/ui/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/example/luckywheel/ui/j;->d:Lcom/example/luckywheel/ui/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/example/luckywheel/ui/j;

    invoke-direct {v0, p0}, Lcom/example/luckywheel/ui/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/example/luckywheel/ui/j;->d:Lcom/example/luckywheel/ui/j;

    :cond_0
    sget-object v0, Lcom/example/luckywheel/ui/j;->d:Lcom/example/luckywheel/ui/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/example/luckywheel/ui/j;->c()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/example/luckywheel/ui/j;->h:I

    invoke-virtual {p0, p1, v0}, Lcom/example/luckywheel/ui/j;->a(II)V

    return-void
.end method

.method public a(II)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput p1, p0, Lcom/example/luckywheel/ui/j;->g:I

    iput p2, p0, Lcom/example/luckywheel/ui/j;->h:I

    iget-object v0, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/16 v0, -0x7879

    const/16 v1, -0x494a

    new-instance v2, Lcom/example/luckywheel/ui/i;

    invoke-direct {v2}, Lcom/example/luckywheel/ui/i;-><init>()V

    invoke-virtual {v2, v5}, Lcom/example/luckywheel/ui/i;->f(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v4, v4, v6

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/example/luckywheel/ui/i;->e(I)V

    invoke-virtual {v2, v1}, Lcom/example/luckywheel/ui/i;->d(I)V

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->c(I)V

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->b(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v3, v3, v6

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/example/luckywheel/ui/i;

    invoke-direct {v2}, Lcom/example/luckywheel/ui/i;-><init>()V

    invoke-virtual {v2, v7}, Lcom/example/luckywheel/ui/i;->f(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v4, v4, v5

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/example/luckywheel/ui/i;->e(I)V

    invoke-virtual {v2, v0}, Lcom/example/luckywheel/ui/i;->d(I)V

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->c(I)V

    const/16 v3, 0x104

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->b(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v3, v3, v5

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/example/luckywheel/ui/i;

    invoke-direct {v2}, Lcom/example/luckywheel/ui/i;-><init>()V

    invoke-virtual {v2, v8}, Lcom/example/luckywheel/ui/i;->f(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v4, v4, v7

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/example/luckywheel/ui/i;->e(I)V

    invoke-virtual {v2, v1}, Lcom/example/luckywheel/ui/i;->d(I)V

    const/16 v3, 0x37

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->c(I)V

    const/16 v3, 0xcd

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->b(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v3, v3, v7

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/example/luckywheel/ui/i;

    invoke-direct {v2}, Lcom/example/luckywheel/ui/i;-><init>()V

    invoke-virtual {v2, v9}, Lcom/example/luckywheel/ui/i;->f(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v4, v4, v8

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/example/luckywheel/ui/i;->e(I)V

    invoke-virtual {v2, v0}, Lcom/example/luckywheel/ui/i;->d(I)V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->c(I)V

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->b(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v3, v3, v8

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/example/luckywheel/ui/i;

    invoke-direct {v2}, Lcom/example/luckywheel/ui/i;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->f(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v4, v4, v9

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/example/luckywheel/ui/i;->e(I)V

    invoke-virtual {v2, v1}, Lcom/example/luckywheel/ui/i;->d(I)V

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->c(I)V

    const/16 v3, 0x6e

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->b(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v3, v3, v9

    add-int/2addr v3, p1

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(I)V

    iget-object v3, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x5

    new-instance v3, Lcom/example/luckywheel/ui/i;

    invoke-direct {v3}, Lcom/example/luckywheel/ui/i;-><init>()V

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/example/luckywheel/ui/i;->f(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v5, v5, v2

    add-int/2addr v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/example/luckywheel/ui/i;->a(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/example/luckywheel/ui/i;->e(I)V

    invoke-virtual {v3, v0}, Lcom/example/luckywheel/ui/i;->d(I)V

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Lcom/example/luckywheel/ui/i;->c(I)V

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Lcom/example/luckywheel/ui/i;->b(I)V

    iget-object v4, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v2, v4, v2

    add-int/2addr v2, p1

    invoke-virtual {v3, v2}, Lcom/example/luckywheel/ui/i;->a(I)V

    iget-object v2, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    new-instance v3, Lcom/example/luckywheel/ui/i;

    invoke-direct {v3}, Lcom/example/luckywheel/ui/i;-><init>()V

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/example/luckywheel/ui/i;->f(I)V

    iget-object v4, p0, Lcom/example/luckywheel/ui/j;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/whatscall/luckywheel/R$string;->try_again_1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/example/luckywheel/ui/i;->a(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lcom/example/luckywheel/ui/i;->e(I)V

    invoke-virtual {v3, v1}, Lcom/example/luckywheel/ui/i;->d(I)V

    const/16 v1, 0x2d

    invoke-virtual {v3, v1}, Lcom/example/luckywheel/ui/i;->c(I)V

    const/16 v1, 0x1e

    invoke-virtual {v3, v1}, Lcom/example/luckywheel/ui/i;->b(I)V

    iget-object v1, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v1, v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v3, v1}, Lcom/example/luckywheel/ui/i;->a(I)V

    iget-object v1, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    new-instance v2, Lcom/example/luckywheel/ui/i;

    invoke-direct {v2}, Lcom/example/luckywheel/ui/i;-><init>()V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->f(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v4, v4, v1

    add-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/example/luckywheel/ui/i;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/example/luckywheel/ui/i;->e(I)V

    invoke-virtual {v2, v0}, Lcom/example/luckywheel/ui/i;->d(I)V

    const/16 v0, 0x1e

    invoke-virtual {v2, v0}, Lcom/example/luckywheel/ui/i;->c(I)V

    invoke-virtual {v2, v6}, Lcom/example/luckywheel/ui/i;->b(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/j;->f:[I

    aget v0, v0, v1

    add-int/2addr v0, p1

    invoke-virtual {v2, v0}, Lcom/example/luckywheel/ui/i;->a(I)V

    iget-object v0, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)Lcom/example/luckywheel/ui/i;
    .locals 3

    iget-object v0, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/luckywheel/ui/i;

    invoke-virtual {v0}, Lcom/example/luckywheel/ui/i;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/j;->b(I)Lcom/example/luckywheel/ui/i;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/example/luckywheel/ui/j;->g:I

    sget v0, Lcom/example/luckywheel/ui/j;->b:I

    iput v0, p0, Lcom/example/luckywheel/ui/j;->h:I

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/example/luckywheel/ui/j;->a(I)V

    return-void
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/example/luckywheel/ui/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/example/luckywheel/ui/j;->c:Ljava/util/ArrayList;

    return-object v0
.end method
