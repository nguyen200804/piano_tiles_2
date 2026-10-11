.class final Lcom/mopub/nativesdk/b/k;
.super Landroid/webkit/WebChromeClient;
.source "WEngine.java"


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/b/h;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/b/h;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mopub/nativesdk/b/k;->a:Lcom/mopub/nativesdk/b/h;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .prologue
    .line 224
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageFinished\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v0, p0, Lcom/mopub/nativesdk/b/k;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/o;->a()V

    .line 227
    iget-object v0, p0, Lcom/mopub/nativesdk/b/k;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativesdk/b/n;

    iget-object v2, p0, Lcom/mopub/nativesdk/b/k;->a:Lcom/mopub/nativesdk/b/h;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mopub/nativesdk/b/n;-><init>(Lcom/mopub/nativesdk/b/h;B)V

    invoke-static {}, Lcom/mopub/nativesdk/b/h;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/nativesdk/b/o;->a(Ljava/lang/Runnable;J)V

    .line 229
    :cond_0
    return-void
.end method
