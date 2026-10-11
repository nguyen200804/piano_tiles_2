.class Lcom/cmplay/d/b$1;
.super Ljava/lang/Object;
.source "LanguageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/d/b;->a(Landroid/content/Context;Ljava/util/Locale;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/cmplay/d/b;


# direct methods
.method constructor <init>(Lcom/cmplay/d/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/cmplay/d/b$1;->b:Lcom/cmplay/d/b;

    iput-object p2, p0, Lcom/cmplay/d/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    iget-object v2, p0, Lcom/cmplay/d/b$1;->b:Lcom/cmplay/d/b;

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/cmplay/d/b$1;->b:Lcom/cmplay/d/b;

    invoke-static {v3}, Lcom/cmplay/d/b;->a(Lcom/cmplay/d/b;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v3, p0, Lcom/cmplay/d/b$1;->b:Lcom/cmplay/d/b;

    iget-object v4, p0, Lcom/cmplay/d/b$1;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/cmplay/d/b;->a(Lcom/cmplay/d/b;Landroid/content/Context;)V

    .line 94
    iget-object v3, p0, Lcom/cmplay/d/b$1;->b:Lcom/cmplay/d/b;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/cmplay/d/b;->a(Lcom/cmplay/d/b;Z)Z

    .line 95
    iget-object v3, p0, Lcom/cmplay/d/b$1;->b:Lcom/cmplay/d/b;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 96
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 99
    return-void

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
