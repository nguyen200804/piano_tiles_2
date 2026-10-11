.class Lcom/cmcm/dmc/sdk/a/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/a/o;->a(Lcom/cmcm/dmc/sdk/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/dmc/sdk/a/o;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/o;->a(Lcom/cmcm/dmc/sdk/a/o;)Landroid/app/ActivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {}, Lcom/cmcm/dmc/sdk/a/c;->c()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/o;->a(Lcom/cmcm/dmc/sdk/a/o;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/o;->a(Lcom/cmcm/dmc/sdk/a/o;)Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/o;->b(Lcom/cmcm/dmc/sdk/a/o;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/o;->a(Lcom/cmcm/dmc/sdk/a/o;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/o;->c(Lcom/cmcm/dmc/sdk/a/o;)Lcom/cmcm/dmc/sdk/a/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/cmcm/dmc/sdk/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/o;->b(Lcom/cmcm/dmc/sdk/a/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/o;->c(Lcom/cmcm/dmc/sdk/a/o;)Lcom/cmcm/dmc/sdk/a/n;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/o;->b(Lcom/cmcm/dmc/sdk/a/o;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/cmcm/dmc/sdk/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/o;->a(Lcom/cmcm/dmc/sdk/a/o;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TopActivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topActivity shutdown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/o;->a()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/a/o;->d(Lcom/cmcm/dmc/sdk/a/o;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/o;->b(Lcom/cmcm/dmc/sdk/a/o;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/o;->a(Lcom/cmcm/dmc/sdk/a/o;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/o;->c(Lcom/cmcm/dmc/sdk/a/o;)Lcom/cmcm/dmc/sdk/a/n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/cmcm/dmc/sdk/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TopActivityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android 5.0+ topActivity shutdown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-virtual {v0}, Lcom/cmcm/dmc/sdk/a/o;->a()V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/o;->b(Lcom/cmcm/dmc/sdk/a/o;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/a/o;->c(Lcom/cmcm/dmc/sdk/a/o;)Lcom/cmcm/dmc/sdk/a/n;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/a/o;->b(Lcom/cmcm/dmc/sdk/a/o;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/cmcm/dmc/sdk/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/a/o$1;->a:Lcom/cmcm/dmc/sdk/a/o;

    invoke-static {v1, v0}, Lcom/cmcm/dmc/sdk/a/o;->a(Lcom/cmcm/dmc/sdk/a/o;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
