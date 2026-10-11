.class Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;
.super Landroid/os/AsyncTask;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadDrawablesAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    .prologue
    .line 983
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 984
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    .line 985
    return-void
.end method

.method private getDrawableFuture(Landroid/net/Uri;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1042
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync$1;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync$1;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;Landroid/net/Uri;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 989
    aget-object v0, p1, v3

    check-cast v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;

    .line 990
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 995
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 997
    invoke-virtual {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->getImages()Ljava/util/List;

    move-result-object v6

    move v2, v3

    .line 998
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 1000
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    .line 1002
    invoke-virtual {v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->getDrawableFuture(Landroid/net/Uri;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v7

    .line 1003
    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1007
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$AppInstallMapper;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    .line 1009
    invoke-virtual {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->getDrawableFuture(Landroid/net/Uri;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 1010
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1017
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1023
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    :goto_2
    const-string v1, "FacebookAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while waiting for future to return. Returning null as drawable : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1026
    :goto_3
    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    .line 1018
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 975
    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isDownloadSuccessful"    # Ljava/lang/Boolean;

    .prologue
    .line 1057
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingSuccess()V

    .line 1064
    :goto_0
    return-void

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->mDrawableListener:Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;

    invoke-interface {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingFailed()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 975
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$DownloadDrawablesAsync;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
