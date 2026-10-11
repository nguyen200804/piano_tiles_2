.class final Lcom/mopub/nativesdk/c/j;
.super Ljava/lang/Object;
.source "InstalledPkgLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/mopub/nativesdk/c/e;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/c/e;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mopub/nativesdk/c/j;->b:Lcom/mopub/nativesdk/c/e;

    iput-object p2, p0, Lcom/mopub/nativesdk/c/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/mopub/nativesdk/c/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/mopub/nativesdk/c/j;->b:Lcom/mopub/nativesdk/c/e;

    invoke-static {v1}, Lcom/mopub/nativesdk/c/e;->b(Lcom/mopub/nativesdk/c/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 59
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.android.vending"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {v0}, Lcom/mopub/nativesdk/d/n;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/mopub/nativesdk/c/j;->b:Lcom/mopub/nativesdk/c/e;

    invoke-static {v2}, Lcom/mopub/nativesdk/c/e;->b(Lcom/mopub/nativesdk/c/e;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/mopub/nativesdk/c/j;->b:Lcom/mopub/nativesdk/c/e;

    invoke-static {v0}, Lcom/mopub/nativesdk/c/e;->c(Lcom/mopub/nativesdk/c/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    return-void
.end method
