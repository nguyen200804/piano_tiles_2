.class Lcom/cmplay/b/e$a$1;
.super Ljava/lang/Object;
.source "CacheUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/b/e$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/b/e$a;


# direct methods
.method constructor <init>(Lcom/cmplay/b/e$a;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/cmplay/b/e$a$1;->a:Lcom/cmplay/b/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 602
    .line 604
    iget-object v1, p0, Lcom/cmplay/b/e$a$1;->a:Lcom/cmplay/b/e$a;

    iget-object v1, v1, Lcom/cmplay/b/e$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 605
    if-eqz v3, :cond_1

    .line 606
    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 607
    int-to-long v6, v2

    iget-object v2, p0, Lcom/cmplay/b/e$a$1;->a:Lcom/cmplay/b/e$a;

    invoke-static {v2, v5}, Lcom/cmplay/b/e$a;->b(Lcom/cmplay/b/e$a;Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v2, v6

    .line 608
    add-int/lit8 v1, v1, 0x1

    .line 609
    iget-object v6, p0, Lcom/cmplay/b/e$a$1;->a:Lcom/cmplay/b/e$a;

    invoke-static {v6}, Lcom/cmplay/b/e$a;->a(Lcom/cmplay/b/e$a;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/cmplay/b/e$a$1;->a:Lcom/cmplay/b/e$a;

    invoke-static {v0}, Lcom/cmplay/b/e$a;->b(Lcom/cmplay/b/e$a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 613
    iget-object v0, p0, Lcom/cmplay/b/e$a$1;->a:Lcom/cmplay/b/e$a;

    invoke-static {v0}, Lcom/cmplay/b/e$a;->c(Lcom/cmplay/b/e$a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 615
    :cond_1
    return-void
.end method
