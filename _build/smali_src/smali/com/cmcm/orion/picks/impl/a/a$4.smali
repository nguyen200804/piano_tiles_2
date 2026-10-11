.class final Lcom/cmcm/orion/picks/impl/a/a$4;
.super Ljava/lang/Object;
.source "CacheUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/lang/String;Ljava/io/Serializable;Lcom/cmcm/orion/picks/impl/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/a$a;

.field final synthetic c:Ljava/io/Serializable;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;Ljava/io/Serializable;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->c:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 288
    .line 291
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a/a;->b()Lcom/cmcm/orion/picks/impl/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/impl/a/b;->b(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/a/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 292
    if-nez v1, :cond_0

    .line 294
    :try_start_1
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->a:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/cmcm/orion/picks/impl/a/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    .line 316
    :goto_0
    return-void

    .line 298
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$a;->a()Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 299
    :try_start_3
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->c:Ljava/io/Serializable;

    invoke-static {v2, v0}, Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    .line 301
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a/a;->b()Lcom/cmcm/orion/picks/impl/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/impl/a/b;->c()V

    .line 302
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$a;->b()V

    .line 304
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/cmcm/orion/picks/impl/a/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    .line 307
    :goto_1
    if-eqz v1, :cond_1

    .line 308
    :try_start_4
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$a;->c()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 313
    :cond_1
    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$4;->a:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/cmcm/orion/picks/impl/a/a;->a(Lcom/cmcm/orion/picks/impl/a$a;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 315
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_1
.end method
