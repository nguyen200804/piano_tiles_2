.class Lcom/cmcm/dmc/sdk/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/b/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/cmcm/dmc/sdk/b/a;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/b/a;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/b/a$1;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.dmc_sdk_uuid.uuid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;)Ljava/lang/String;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;I)I

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "sdk_uuid"

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;)Ljava/lang/String;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;I)I

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-static {v0}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sdk_uuid"

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/cmcm/dmc/sdk/b/a$1;->b:Lcom/cmcm/dmc/sdk/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/b/a;->a(Lcom/cmcm/dmc/sdk/b/a;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method
