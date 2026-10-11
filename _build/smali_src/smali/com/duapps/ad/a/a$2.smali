.class Lcom/duapps/ad/a/a$2;
.super Ljava/lang/Object;
.source "AdmobCacheManager.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duapps/ad/a/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duapps/ad/a/c;

.field final synthetic b:Lcom/duapps/ad/a/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/a/a;Lcom/duapps/ad/a/c;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/duapps/ad/a/a$2;->b:Lcom/duapps/ad/a/a;

    iput-object p2, p0, Lcom/duapps/ad/a/a$2;->a:Lcom/duapps/ad/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .locals 3

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/duapps/ad/a/a$2;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->g(Lcom/duapps/ad/a/a;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 205
    :try_start_0
    invoke-static {}, Lcom/duapps/ad/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdmobCacheManager get NativeAppInstallAd"

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/duapps/ad/a/a$2;->a:Lcom/duapps/ad/a/c;

    new-instance v2, Lcom/duapps/ad/a/b;

    invoke-direct {v2, p1}, Lcom/duapps/ad/a/b;-><init>(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V

    invoke-virtual {v0, v2}, Lcom/duapps/ad/a/c;->a(Lcom/duapps/ad/a/b;)V

    .line 207
    iget-object v0, p0, Lcom/duapps/ad/a/a$2;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->g(Lcom/duapps/ad/a/a;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/a/a$2;->a:Lcom/duapps/ad/a/c;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    monitor-exit v1

    .line 210
    :cond_0
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
