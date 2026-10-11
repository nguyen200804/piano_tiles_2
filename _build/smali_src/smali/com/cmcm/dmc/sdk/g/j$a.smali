.class Lcom/cmcm/dmc/sdk/g/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmcm/dmc/sdk/g/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/g/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/g/j;

.field private b:I

.field private c:Z

.field private d:Ljava/io/File;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method private constructor <init>(Lcom/cmcm/dmc/sdk/g/j;)V
    .locals 2

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->f:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/dmc/sdk/g/j;Lcom/cmcm/dmc/sdk/g/j$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/g/j$a;-><init>(Lcom/cmcm/dmc/sdk/g/j;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/dmc/sdk/g/j$a;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->d:Ljava/io/File;

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    const-string v1, "failed to delete the temp file"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->d:Ljava/io/File;

    :cond_1
    iput v3, p0, Lcom/cmcm/dmc/sdk/g/j$a;->b:I

    iput-boolean v3, p0, Lcom/cmcm/dmc/sdk/g/j$a;->c:Z

    return-void
.end method

.method static synthetic b(Lcom/cmcm/dmc/sdk/g/j$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/j$a;->b()V

    return-void
.end method

.method static synthetic c(Lcom/cmcm/dmc/sdk/g/j$a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->e:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    :try_start_0
    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/j$a;->d:Ljava/io/File;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/g/j$a;->e:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->c:Z

    const-string v0, "reporter"

    const-string v1, "k_report_interval"

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/cmcm/dmc/sdk/a/c;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->f:J

    iget-wide v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->f:J

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->c(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j$a;->e:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/g;->a(Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->g(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/g/i;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/d;->a()Lcom/cmcm/dmc/sdk/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/dmc/sdk/a/d;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/j$a;->d:Ljava/io/File;

    invoke-virtual {v0, v1, v2, p0}, Lcom/cmcm/dmc/sdk/g/i;->a(Ljava/lang/String;Ljava/io/File;Lcom/cmcm/dmc/sdk/g/j$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/cmcm/dmc/sdk/g/j;->a:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "report fail, message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/cmcm/dmc/sdk/g/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/j$a;->b()V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->c(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j$a;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/cmcm/dmc/sdk/g/g;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/k;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "report_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/g/j;->h(Lcom/cmcm/dmc/sdk/g/j;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/cmcm/dmc/sdk/g/j$a$1;

    invoke-direct {v2, p0}, Lcom/cmcm/dmc/sdk/g/j$a$1;-><init>(Lcom/cmcm/dmc/sdk/g/j$a;)V

    iget-wide v4, p0, Lcom/cmcm/dmc/sdk/g/j$a;->f:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/k;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "report_sequence"

    const-string v3, "report_sequence"

    invoke-virtual {v0, v3}, Lcom/cmcm/dmc/sdk/a/k;->b(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v0, 0xa

    const-string v1, "success"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmcm/dmc/sdk/g/j$a;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/j$a;->b()V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->c(Lcom/cmcm/dmc/sdk/g/j;)Lcom/cmcm/dmc/sdk/g/g;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/j$a;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/g;->a(Ljava/util/List;Z)V

    const/16 v0, 0xa

    const-string v1, "failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->a:Lcom/cmcm/dmc/sdk/g/j;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/j;->h(Lcom/cmcm/dmc/sdk/g/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cmcm/dmc/sdk/g/j$a$2;

    invoke-direct {v1, p0}, Lcom/cmcm/dmc/sdk/g/j$a$2;-><init>(Lcom/cmcm/dmc/sdk/g/j$a;)V

    iget-wide v2, p0, Lcom/cmcm/dmc/sdk/g/j$a;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0xa

    const-string v1, "trying"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/cmcm/dmc/sdk/g/j;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cmcm/dmc/sdk/g/j$a;->c:Z

    return v0
.end method
