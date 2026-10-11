.class Lcom/cmplay/cloud/b$2;
.super Ljava/lang/Object;
.source "CloudConfigUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/cloud/b;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cmplay/cloud/b;


# direct methods
.method constructor <init>(Lcom/cmplay/cloud/b;Z)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/cmplay/cloud/b$2;->b:Lcom/cmplay/cloud/b;

    iput-boolean p2, p0, Lcom/cmplay/cloud/b$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/cmplay/cloud/b$2;->b:Lcom/cmplay/cloud/b;

    invoke-static {v0}, Lcom/cmplay/cloud/b;->a(Lcom/cmplay/cloud/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/cloudconfig/c/a;->a(Landroid/content/Context;)V

    .line 172
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v0

    const-string v1, "local_version"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Lcom/cmplay/util/c/a/c;

    invoke-direct {v2}, Lcom/cmplay/util/c/a/c;-><init>()V

    iget-boolean v0, p0, Lcom/cmplay/cloud/b$2;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/cmplay/util/c/a/c;->a(BLjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/cmplay/cloud/b$2;->b:Lcom/cmplay/cloud/b;

    invoke-virtual {v0}, Lcom/cmplay/cloud/b;->c()V

    .line 176
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
