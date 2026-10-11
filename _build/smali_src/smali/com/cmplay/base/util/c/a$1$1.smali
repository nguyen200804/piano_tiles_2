.class Lcom/cmplay/base/util/c/a$1$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/c/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/cmplay/base/util/c/a$1;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/c/a$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cmplay/base/util/c/a$1$1;->b:Lcom/cmplay/base/util/c/a$1;

    iput-object p2, p0, Lcom/cmplay/base/util/c/a$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cmplay/base/util/c/a$1$1;->b:Lcom/cmplay/base/util/c/a$1;

    iget-object v0, v0, Lcom/cmplay/base/util/c/a$1;->c:Lcom/cmplay/base/util/c/a$a;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/cmplay/base/util/c/a$1$1;->b:Lcom/cmplay/base/util/c/a$1;

    iget-object v1, v0, Lcom/cmplay/base/util/c/a$1;->c:Lcom/cmplay/base/util/c/a$a;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/base/util/c/a$1$1;->b:Lcom/cmplay/base/util/c/a$1;

    iget-object v0, v0, Lcom/cmplay/base/util/c/a$1;->c:Lcom/cmplay/base/util/c/a$a;

    iget-object v2, p0, Lcom/cmplay/base/util/c/a$1$1;->a:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/cmplay/base/util/c/a$1$1;->b:Lcom/cmplay/base/util/c/a$1;

    iget-object v3, v3, Lcom/cmplay/base/util/c/a$1;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/cmplay/base/util/c/a$a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 169
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    invoke-static {}, Lcom/cmplay/base/util/c/a;->c()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/base/util/c/a$1$1;->b:Lcom/cmplay/base/util/c/a$1;

    iget-object v1, v1, Lcom/cmplay/base/util/c/a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
