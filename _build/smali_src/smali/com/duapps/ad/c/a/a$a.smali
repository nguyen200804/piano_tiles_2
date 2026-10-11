.class Lcom/duapps/ad/c/a/a$a;
.super Ljava/lang/Object;
.source "NetworkRequestFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/c/a/a$a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 368
    const-string v0, "TracerPid"

    sput-object v0, Lcom/duapps/ad/c/a/a$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, -0x1

    .line 400
    const/4 v1, 0x0

    .line 401
    const/4 v3, 0x0

    .line 403
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/net/tcp"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x3e8

    invoke-direct {v2, v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 408
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 410
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    const-string v3, "\\W+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/c/a/a$a$a;->a([Ljava/lang/String;)Lcom/duapps/ad/c/a/a$a$a;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 439
    :goto_2
    return v1

    .line 414
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 419
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/c/a/a$a$a;

    .line 420
    iget-wide v6, v0, Lcom/duapps/ad/c/a/a$a$a;->b:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 421
    iget v0, v0, Lcom/duapps/ad/c/a/a$a$a;->c:I

    move v3, v0

    .line 426
    :goto_3
    if-eq v3, v4, :cond_2

    .line 427
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/c/a/a$a$a;

    .line 428
    iget-wide v6, v0, Lcom/duapps/ad/c/a/a$a$a;->b:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    iget v0, v0, Lcom/duapps/ad/c/a/a$a$a;->c:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v3, :cond_3

    .line 429
    const/4 v0, 0x1

    :goto_5
    move v1, v0

    .line 431
    goto :goto_4

    .line 436
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 433
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_5

    :cond_4
    move v3, v4

    goto :goto_3
.end method
