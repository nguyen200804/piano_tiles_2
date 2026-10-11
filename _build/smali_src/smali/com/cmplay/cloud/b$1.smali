.class Lcom/cmplay/cloud/b$1;
.super Ljava/lang/Object;
.source "CloudConfigUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/cloud/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmplay/cloud/b;


# direct methods
.method constructor <init>(Lcom/cmplay/cloud/b;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cmplay/cloud/b$1;->a:Lcom/cmplay/cloud/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cmplay/cloud/b$1;->a:Lcom/cmplay/cloud/b;

    invoke-static {v0}, Lcom/cmplay/cloud/b;->a(Lcom/cmplay/cloud/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/c/a;->a(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "local_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/cmplay/cloud/b$1;->a:Lcom/cmplay/cloud/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cmplay/cloud/b;->a(Z)V

    .line 81
    :goto_0
    const-string v1, "mys"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceExecute cloud version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a()Lcom/ijinshan/cloudconfig/deepcloudconfig/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ijinshan/cloudconfig/deepcloudconfig/c;->a(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/cmplay/cloud/b$1;->a:Lcom/cmplay/cloud/b;

    invoke-static {v1}, Lcom/cmplay/cloud/b;->b(Lcom/cmplay/cloud/b;)V

    .line 79
    new-instance v1, Lcom/cmplay/util/c/a/c;

    invoke-direct {v1}, Lcom/cmplay/util/c/a/c;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/cmplay/util/c/a/c;->a(BLjava/lang/String;)V

    goto :goto_0
.end method
