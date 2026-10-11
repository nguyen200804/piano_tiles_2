.class final Lcom/cmcm/orion/picks/impl/a/a$3;
.super Ljava/lang/Object;
.source "CacheUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/lang/String;Ljava/io/File;Lcom/cmcm/orion/picks/impl/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 239
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/picks/impl/a/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V

    .line 274
    :goto_0
    return-void

    .line 248
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a/a;->b()Lcom/cmcm/orion/picks/impl/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/impl/a/b;->b(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/a/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 249
    if-nez v1, :cond_2

    .line 251
    :try_start_1
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->c:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/cmcm/orion/picks/impl/a/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    .line 273
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 255
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->a:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :try_start_3
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$a;->a()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 257
    :try_start_4
    invoke-static {v2, v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 258
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a/a;->b()Lcom/cmcm/orion/picks/impl/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmcm/orion/picks/impl/a/b;->c()V

    .line 259
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$a;->b()V

    .line 261
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v4, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->c:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/cmcm/orion/picks/impl/a/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 272
    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    .line 273
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 264
    :goto_1
    if-eqz v1, :cond_3

    .line 265
    :try_start_5
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$a;->c()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 270
    :cond_3
    :goto_2
    :try_start_6
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/a/a$3;->c:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/cmcm/orion/picks/impl/a/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 272
    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    .line 273
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3
    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    .line 273
    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 272
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v2, v0

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_1
.end method
