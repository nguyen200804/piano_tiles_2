.class final Lcom/cmcm/orion/picks/impl/a/a$2;
.super Ljava/lang/Object;
.source "CacheUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cmcm/orion/picks/impl/a$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/a/a$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/a/a$2;->b:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 201
    .line 204
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/picks/impl/a/a;->b()Lcom/cmcm/orion/picks/impl/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$2;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/impl/a/b;->a(Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/a/b$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 205
    if-nez v1, :cond_1

    .line 206
    :try_start_1
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$2;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/a/a$2;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/cmcm/orion/picks/impl/a$a;->a(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 222
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$c;->close()V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$c;->a()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 211
    :try_start_3
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/a/a$2;->b:Lcom/cmcm/orion/picks/impl/a$a;

    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/a/a$2;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/cmcm/orion/picks/impl/a$a;->a(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 215
    if-eqz v0, :cond_2

    .line 217
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 222
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$c;->close()V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    if-eqz v0, :cond_3

    .line 217
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 222
    :cond_3
    :goto_3
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/a/b$c;->close()V

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    :goto_4
    if-eqz v1, :cond_4

    .line 217
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 222
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 223
    invoke-virtual {v2}, Lcom/cmcm/orion/picks/impl/a/b$c;->close()V

    :cond_5
    throw v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_5

    .line 215
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_2
.end method
