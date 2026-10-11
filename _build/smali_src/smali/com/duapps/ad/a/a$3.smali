.class Lcom/duapps/ad/a/a$3;
.super Ljava/lang/Object;
.source "AdmobCacheManager.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


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
    .line 212
    iput-object p1, p0, Lcom/duapps/ad/a/a$3;->b:Lcom/duapps/ad/a/a;

    iput-object p2, p0, Lcom/duapps/ad/a/a$3;->a:Lcom/duapps/ad/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 3

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/duapps/ad/a/a$3;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->g(Lcom/duapps/ad/a/a;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 218
    :try_start_0
    invoke-static {}, Lcom/duapps/ad/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdmobCacheManager get NativeContentAd"

    invoke-static {v0, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/duapps/ad/a/a$3;->a:Lcom/duapps/ad/a/c;

    new-instance v2, Lcom/duapps/ad/a/b;

    invoke-direct {v2, p1}, Lcom/duapps/ad/a/b;-><init>(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    invoke-virtual {v0, v2}, Lcom/duapps/ad/a/c;->a(Lcom/duapps/ad/a/b;)V

    .line 220
    iget-object v0, p0, Lcom/duapps/ad/a/a$3;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->g(Lcom/duapps/ad/a/a;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/a/a$3;->a:Lcom/duapps/ad/a/c;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    monitor-exit v1

    .line 223
    :cond_0
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
