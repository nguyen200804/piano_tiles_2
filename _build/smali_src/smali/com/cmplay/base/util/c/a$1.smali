.class Lcom/cmplay/base/util/c/a$1;
.super Ljava/lang/Object;
.source "AsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/c/a;->a(Ljava/lang/String;ZLcom/cmplay/base/util/c/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/cmplay/base/util/c/a$a;

.field final synthetic d:Lcom/cmplay/base/util/c/a;


# direct methods
.method constructor <init>(Lcom/cmplay/base/util/c/a;Ljava/lang/String;ZLcom/cmplay/base/util/c/a$a;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cmplay/base/util/c/a$1;->d:Lcom/cmplay/base/util/c/a;

    iput-object p2, p0, Lcom/cmplay/base/util/c/a$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cmplay/base/util/c/a$1;->b:Z

    iput-object p4, p0, Lcom/cmplay/base/util/c/a$1;->c:Lcom/cmplay/base/util/c/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/cmplay/base/util/c/a;->b()Lcom/cmplay/base/util/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/base/util/c/a$1;->d:Lcom/cmplay/base/util/c/a;

    iget-object v1, v1, Lcom/cmplay/base/util/c/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmplay/base/util/c/a$1;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/cmplay/base/util/c/a$1;->b:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmplay/base/util/c/e;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/cmplay/base/util/c/a$1;->d:Lcom/cmplay/base/util/c/a;

    invoke-static {v1}, Lcom/cmplay/base/util/c/a;->a(Lcom/cmplay/base/util/c/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/cmplay/base/util/c/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/cmplay/base/util/c/a$1$1;-><init>(Lcom/cmplay/base/util/c/a$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method
