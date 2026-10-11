.class public Lcom/cmplay/util/x;
.super Ljava/lang/Object;
.source "PathUtil.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    const-string v0, "/iconcache/"

    const-string v1, ".nomedia"

    invoke-static {v0, v1}, Lcom/cmplay/webview/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    return-object v0
.end method

.method public static b()Ljava/io/File;
    .locals 4

    .prologue
    .line 30
    sget-object v0, Lcom/cmplay/tile2/GameApp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    const/4 v0, 0x0

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/iconcache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method
