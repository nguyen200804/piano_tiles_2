.class Lcom/cmplay/webview/c/a$2;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/webview/c/a;->b(Landroid/content/Context;[Ljava/lang/String;Lcom/cmplay/webview/c/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/webview/c/a;


# direct methods
.method constructor <init>(Lcom/cmplay/webview/c/a;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    const/4 v2, 0x1

    .line 79
    if-nez p3, :cond_1

    .line 80
    iget-object v0, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    invoke-static {v0}, Lcom/cmplay/webview/c/a;->a(Lcom/cmplay/webview/c/a;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    invoke-static {v0}, Lcom/cmplay/webview/c/a;->b(Lcom/cmplay/webview/c/a;)I

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    invoke-static {v0}, Lcom/cmplay/webview/c/a;->d(Lcom/cmplay/webview/c/a;)I

    move-result v0

    iget-object v1, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    invoke-static {v1}, Lcom/cmplay/webview/c/a;->e(Lcom/cmplay/webview/c/a;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    invoke-static {v1}, Lcom/cmplay/webview/c/a;->f(Lcom/cmplay/webview/c/a;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/cmplay/webview/c/a;->a(Lcom/cmplay/webview/c/a;Z)Z

    .line 89
    iget-object v0, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/cmplay/webview/c/a$2;->a:Lcom/cmplay/webview/c/a;

    invoke-static {v0}, Lcom/cmplay/webview/c/a;->c(Lcom/cmplay/webview/c/a;)I

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
