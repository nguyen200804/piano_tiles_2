.class Lcom/cmcm/dmc/sdk/e/e$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/dmc/sdk/e/e$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/cmcm/dmc/sdk/e/e$a;


# direct methods
.method constructor <init>(Lcom/cmcm/dmc/sdk/e/e$a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iput-object p2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-wide/16 v12, 0xa

    const-wide/32 v10, 0x36ee80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/e/e;->c(Lcom/cmcm/dmc/sdk/e/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v2, v0, v1}, Lcom/cmcm/dmc/sdk/e/e;->a(Lcom/cmcm/dmc/sdk/e/e;J)J

    iget-object v0, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v0, v0, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/dmc/sdk/e/e;->a(Lcom/cmcm/dmc/sdk/e/e;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/cmcm/dmc/sdk/e/e;->a(Lcom/cmcm/dmc/sdk/e/e;Z)Z

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v2, v0, v1}, Lcom/cmcm/dmc/sdk/e/e;->b(Lcom/cmcm/dmc/sdk/e/e;J)J

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/e/e;->d(Lcom/cmcm/dmc/sdk/e/e;)J

    move-result-wide v2

    div-long/2addr v2, v10

    div-long v4, v0, v10

    iget-object v6, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v6, v6, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v6}, Lcom/cmcm/dmc/sdk/e/e;->e(Lcom/cmcm/dmc/sdk/e/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v6, v6, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v6, v7}, Lcom/cmcm/dmc/sdk/e/e;->a(Lcom/cmcm/dmc/sdk/e/e;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    :cond_2
    iget-object v6, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v6, v6, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v6}, Lcom/cmcm/dmc/sdk/e/e;->d(Lcom/cmcm/dmc/sdk/e/e;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v6, v6, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v6}, Lcom/cmcm/dmc/sdk/e/e;->d(Lcom/cmcm/dmc/sdk/e/e;)J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/e/e;->e(Lcom/cmcm/dmc/sdk/e/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v1, v1, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v1}, Lcom/cmcm/dmc/sdk/e/e;->d(Lcom/cmcm/dmc/sdk/e/e;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/e/e;->e(Lcom/cmcm/dmc/sdk/e/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v3, v3, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/e/e;->d(Lcom/cmcm/dmc/sdk/e/e;)J

    move-result-wide v4

    add-long/2addr v4, v10

    iget-object v3, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v3, v3, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v3}, Lcom/cmcm/dmc/sdk/e/e;->d(Lcom/cmcm/dmc/sdk/e/e;)J

    move-result-wide v6

    rem-long/2addr v6, v10

    sub-long/2addr v4, v6

    sub-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v4, v4, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v4}, Lcom/cmcm/dmc/sdk/e/e;->d(Lcom/cmcm/dmc/sdk/e/e;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/cmcm/dmc/sdk/e/e$a$1;->b:Lcom/cmcm/dmc/sdk/e/e$a;

    iget-object v2, v2, Lcom/cmcm/dmc/sdk/e/e$a;->a:Lcom/cmcm/dmc/sdk/e/e;

    invoke-static {v2}, Lcom/cmcm/dmc/sdk/e/e;->e(Lcom/cmcm/dmc/sdk/e/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    rem-long v4, v0, v10

    sub-long/2addr v0, v4

    add-long/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
