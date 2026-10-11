.class public final Lcom/mnt/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mnt/impl/f/d$a;


# instance fields
.field private synthetic a:Lcom/mnt/impl/b;


# direct methods
.method constructor <init>(Lcom/mnt/impl/b;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mnt/impl/d;->a:Lcom/mnt/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/mnt/impl/dsp/c;Ljava/lang/String;Lcom/mnt/impl/dsp/b;)Landroid/webkit/WebView;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 4028
    new-instance v0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;-><init>(Landroid/content/Context;Lcom/mnt/impl/dsp/c;Ljava/lang/String;)V

    .line 4029
    invoke-virtual {v0, p3}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->setOnWebViewClickListener(Lcom/mnt/impl/dsp/b;)V

    .line 4072
    sget-object v1, Lcom/mnt/impl/e;->ak:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->setBackgroundColor(I)V

    .line 4073
    invoke-virtual {v0}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 4074
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4075
    invoke-virtual {v0, v4}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->setVerticalScrollBarEnabled(Z)V

    .line 4076
    invoke-virtual {v0, v4}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 4077
    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->setScrollBarStyle(I)V

    .line 4078
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 4079
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 4080
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 4082
    :cond_0
    new-instance v1, Lcom/mnt/impl/dsp/a;

    invoke-direct {v1, v0}, Lcom/mnt/impl/dsp/a;-><init>(Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)V

    invoke-virtual {v0, v1}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4115
    iget-object v1, p1, Lcom/mnt/impl/dsp/c;->d:Lcom/mnt/impl/dsp/c$a;

    .line 4169
    iget-object v2, v1, Lcom/mnt/impl/dsp/c$a;->a:Ljava/lang/String;

    .line 5118
    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/mnt/impl/e;->al:Ljava/lang/String;

    sget-object v4, Lcom/mnt/impl/e;->am:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4032
    :goto_0
    return-object v0

    .line 5120
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/mnt/a/c;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6046
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6047
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/mnt/impl/e;->W:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6050
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 6051
    sget-object v1, Lcom/mnt/impl/e;->X:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6056
    new-instance v1, Lcom/mnt/a/d;

    invoke-direct {v1, v3}, Lcom/mnt/a/d;-><init>(B)V

    .line 6057
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/mnt/impl/e;->Y:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6058
    sget-object v2, Lcom/mnt/impl/e;->Z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6059
    invoke-virtual {p0, v0, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6061
    :try_start_1
    new-instance v2, Lcom/mnt/a/e;

    .line 6088
    iget-boolean v0, v1, Lcom/mnt/a/d;->a:Z

    if-eqz v0, :cond_1

    .line 6089
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6065
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6067
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0

    .line 6053
    :catch_1
    move-exception v0

    throw v0

    .line 6090
    :cond_1
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v1, Lcom/mnt/a/d;->a:Z

    .line 6091
    iget-object v0, v1, Lcom/mnt/a/d;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 6061
    invoke-direct {v2, v0}, Lcom/mnt/a/e;-><init>(Landroid/os/IBinder;)V

    .line 6062
    new-instance v0, Lcom/mnt/a/c;

    invoke-virtual {v2}, Lcom/mnt/a/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mnt/a/e;->b()Z

    invoke-direct {v0, v3}, Lcom/mnt/a/c;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6067
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 6063
    return-object v0

    .line 6070
    :cond_2
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lcom/mnt/impl/e;->aa:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Z
    .locals 5

    .prologue
    .line 3018
    sget-object v1, Lcom/mnt/impl/e;->mk:Ljava/lang/String;

    .line 3022
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3038
    sget-object v0, Lcom/mnt/impl/e;->mn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/mnt/impl/e;->mo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3026
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3027
    sget-object v4, Lcom/mnt/impl/e;->ml:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/mnt/impl/e;->mm:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3030
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mnt/impl/b/k;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3031
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3018
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4015
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4019
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4020
    const/4 v0, 0x1

    .line 4025
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/mnt/impl/e/g;)V
    .locals 3

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 1281
    iget v0, p1, Lcom/mnt/impl/e/g;->a:I

    .line 182
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mnt/impl/d;->a:Lcom/mnt/impl/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mnt/impl/b;->a(ZLjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mnt/impl/d;->a:Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/d;->a:Lcom/mnt/impl/b;

    invoke-static {v1}, Lcom/mnt/impl/b;->b(Lcom/mnt/impl/b;)Lcom/mnt/MntBuild;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/b;Lcom/mnt/impl/e/g;Lcom/mnt/MntBuild;)V

    .line 193
    :goto_0
    return-void

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    .line 2281
    iget v0, p1, Lcom/mnt/impl/e/g;->a:I

    .line 186
    const/16 v1, 0x12c

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/mnt/impl/d;->a:Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/d;->a:Lcom/mnt/impl/b;

    invoke-static {v1}, Lcom/mnt/impl/b;->b(Lcom/mnt/impl/b;)Lcom/mnt/MntBuild;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mnt/impl/b;->b(Lcom/mnt/impl/b;Lcom/mnt/impl/e/g;Lcom/mnt/MntBuild;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/mnt/impl/d;->a:Lcom/mnt/impl/b;

    invoke-static {v0}, Lcom/mnt/impl/b;->c(Lcom/mnt/impl/b;)V

    goto :goto_0
.end method
