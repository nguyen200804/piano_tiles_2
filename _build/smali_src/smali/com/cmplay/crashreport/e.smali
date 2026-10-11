.class Lcom/cmplay/crashreport/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/cmplay/crashreport/c;


# direct methods
.method constructor <init>(Lcom/cmplay/crashreport/c;)V
    .locals 0

    iput-object p1, p0, Lcom/cmplay/crashreport/e;->a:Lcom/cmplay/crashreport/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const-wide/16 v2, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-----thread info-----\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/crashreport/e;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v0}, Lcom/cmplay/crashreport/c;->d(Lcom/cmplay/crashreport/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/cmplay/crashreport/e;->a:Lcom/cmplay/crashreport/c;

    iget-object v2, p0, Lcom/cmplay/crashreport/e;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v2}, Lcom/cmplay/crashreport/c;->d(Lcom/cmplay/crashreport/c;)Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v1, v2, v0, v6}, Lcom/cmplay/crashreport/c;->a(Lcom/cmplay/crashreport/c;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/cmplay/crashreport/e;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v1, v0}, Lcom/cmplay/crashreport/c;->a(Lcom/cmplay/crashreport/c;[Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    move-wide v2, v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    iget-object v8, p0, Lcom/cmplay/crashreport/e;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v8}, Lcom/cmplay/crashreport/c;->d(Lcom/cmplay/crashreport/c;)Ljava/lang/Thread;

    move-result-object v8

    if-eq v0, v8, :cond_1

    if-eq v0, v5, :cond_1

    iget-object v8, p0, Lcom/cmplay/crashreport/e;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v8, v0, v1, v6}, Lcom/cmplay/crashreport/c;->a(Lcom/cmplay/crashreport/c;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    const-string v0, "\n\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-----anrkey-----\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "anrkey="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cmplay/crashreport/e;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v0}, Lcom/cmplay/crashreport/c;->e(Lcom/cmplay/crashreport/c;)Lcom/cmplay/crashreport/f;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmplay/crashreport/e;->a:Lcom/cmplay/crashreport/c;

    invoke-static {v0}, Lcom/cmplay/crashreport/c;->e(Lcom/cmplay/crashreport/c;)Lcom/cmplay/crashreport/f;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cmplay/crashreport/f;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
