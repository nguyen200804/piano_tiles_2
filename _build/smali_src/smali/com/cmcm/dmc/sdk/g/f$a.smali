.class Lcom/cmcm/dmc/sdk/g/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmcm/dmc/sdk/g/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/dmc/sdk/g/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/g/f;

.field private b:Lcom/cmcm/dmc/sdk/g/h;

.field private c:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/cmcm/dmc/sdk/g/f;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/f$a;->a:Lcom/cmcm/dmc/sdk/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cmcm/dmc/sdk/g/f;Lcom/cmcm/dmc/sdk/g/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcm/dmc/sdk/g/f$a;-><init>(Lcom/cmcm/dmc/sdk/g/f;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->c:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to delete the temp file"

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->c:Ljava/io/File;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Lcom/cmcm/dmc/sdk/g/h;)V
    .locals 2

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/g/f$a;->b:Lcom/cmcm/dmc/sdk/g/h;

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/g/f$a;->c:Ljava/io/File;

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->a:Lcom/cmcm/dmc/sdk/g/f;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/f;->a(Lcom/cmcm/dmc/sdk/g/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->a:Lcom/cmcm/dmc/sdk/g/f;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/f;->b(Lcom/cmcm/dmc/sdk/g/f;)Lcom/cmcm/dmc/sdk/g/i;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/d;->a()Lcom/cmcm/dmc/sdk/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/dmc/sdk/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p0}, Lcom/cmcm/dmc/sdk/g/i;->a(Ljava/lang/String;Ljava/io/File;Lcom/cmcm/dmc/sdk/g/j$c;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/cmcm/dmc/sdk/g/f$a;->a()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/k;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "report_sequence"

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/k;->a()Lcom/cmcm/dmc/sdk/a/k;

    move-result-object v2

    const-string v3, "report_sequence"

    invoke-virtual {v2, v3}, Lcom/cmcm/dmc/sdk/a/k;->b(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report success\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/f$a;->b:Lcom/cmcm/dmc/sdk/g/h;

    invoke-virtual {v2}, Lcom/cmcm/dmc/sdk/g/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->a:Lcom/cmcm/dmc/sdk/g/f;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/f;->c(Lcom/cmcm/dmc/sdk/g/f;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->a:Lcom/cmcm/dmc/sdk/g/f;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/f;->c(Lcom/cmcm/dmc/sdk/g/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->a:Lcom/cmcm/dmc/sdk/g/f;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/f;->c(Lcom/cmcm/dmc/sdk/g/f;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/dmc/sdk/g/h;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/f$a;->a:Lcom/cmcm/dmc/sdk/g/f;

    invoke-static {v2, v0}, Lcom/cmcm/dmc/sdk/g/f;->b(Lcom/cmcm/dmc/sdk/g/f;Lcom/cmcm/dmc/sdk/g/h;)V

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cmcm/dmc/sdk/g/f;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report error, insert into database\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/g/f$a;->b:Lcom/cmcm/dmc/sdk/g/h;

    invoke-virtual {v2}, Lcom/cmcm/dmc/sdk/g/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->a:Lcom/cmcm/dmc/sdk/g/f;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/g/f$a;->b:Lcom/cmcm/dmc/sdk/g/h;

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/g/f;->a(Lcom/cmcm/dmc/sdk/g/f;Lcom/cmcm/dmc/sdk/g/h;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/g/f$a;->a:Lcom/cmcm/dmc/sdk/g/f;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/g/f;->a(Lcom/cmcm/dmc/sdk/g/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/cmcm/dmc/sdk/g/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "report end\n "

    invoke-static {v0, v2}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
