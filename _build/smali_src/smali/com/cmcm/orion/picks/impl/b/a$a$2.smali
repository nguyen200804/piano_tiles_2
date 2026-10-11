.class final Lcom/cmcm/orion/picks/impl/b/a$a$2;
.super Ljava/lang/Object;
.source "FileFetcher.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/picks/impl/b/a$a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/picks/impl/b/a$a;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/picks/impl/b/a$a;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/cmcm/orion/adsdk/d;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v0, p2}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/adsdk/d;)V

    .line 237
    return-void
.end method

.method public final a(ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 171
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    .line 172
    const/high16 v0, 0x1e00000

    if-ge p4, v0, :cond_5

    .line 173
    invoke-static {}, Lcom/cmcm/orion/picks/impl/b/a;->b()Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/cmcm/orion/picks/impl/b/a;->a()Lcom/cmcm/orion/picks/impl/a/a;

    invoke-static {}, Lcom/cmcm/orion/picks/impl/a/a;->a()Ljava/io/File;

    move-result-object v0

    .line 175
    const/4 v2, -0x1

    if-eq p4, v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->b(Ljava/io/File;)J

    move-result-wide v2

    mul-int/lit8 v4, p4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->n:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/adsdk/d;)V

    .line 232
    :goto_0
    return-void

    .line 185
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 190
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 193
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;Ljava/io/File;)Ljava/io/File;

    .line 196
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->b(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    :try_start_2
    invoke-static {p2, v2}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 201
    invoke-static {}, Lcom/cmcm/orion/picks/impl/b/a;->a()Lcom/cmcm/orion/picks/impl/a/a;

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->c(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/b/a$a;->b(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/io/File;

    move-result-object v1

    new-instance v4, Lcom/cmcm/orion/picks/impl/b/a$a$2$1;

    invoke-direct {v4, p0}, Lcom/cmcm/orion/picks/impl/b/a$a$2$1;-><init>(Lcom/cmcm/orion/picks/impl/b/a$a$2;)V

    invoke-static {v0, v1, v4}, Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/lang/String;Ljava/io/File;Lcom/cmcm/orion/picks/impl/a$a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    .line 224
    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v3, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    sget-object v4, Lcom/cmcm/orion/adsdk/d;->g:Lcom/cmcm/orion/adsdk/d;

    invoke-virtual {v4, v0}, Lcom/cmcm/orion/adsdk/d;->a(Ljava/lang/String;)Lcom/cmcm/orion/adsdk/d;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/adsdk/d;)V

    .line 219
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->b(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/b/a$a;->b(Lcom/cmcm/orion/picks/impl/b/a$a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 223
    :cond_4
    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    .line 224
    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 223
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_2
    invoke-static {v3}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    .line 224
    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/io/Closeable;)V

    throw v0

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->m:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/adsdk/d;)V

    goto/16 :goto_0

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/b/a$a$2;->a:Lcom/cmcm/orion/picks/impl/b/a$a;

    sget-object v1, Lcom/cmcm/orion/adsdk/d;->g:Lcom/cmcm/orion/adsdk/d;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/b/a$a;->a(Lcom/cmcm/orion/picks/impl/b/a$a;Lcom/cmcm/orion/adsdk/d;)V

    goto/16 :goto_0

    .line 223
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_2

    .line 217
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method
