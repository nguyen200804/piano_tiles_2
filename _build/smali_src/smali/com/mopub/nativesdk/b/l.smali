.class final Lcom/mopub/nativesdk/b/l;
.super Ljava/lang/Object;
.source "WEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/mopub/nativesdk/b/h;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/b/h;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/mopub/nativesdk/b/l;->a:Lcom/mopub/nativesdk/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mopub/nativesdk/b/l;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->c(Lcom/mopub/nativesdk/b/h;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/mopub/nativesdk/b/l;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->c(Lcom/mopub/nativesdk/b/h;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 267
    iget-object v0, p0, Lcom/mopub/nativesdk/b/l;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->c(Lcom/mopub/nativesdk/b/h;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/b/l;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/o;->a()V

    .line 270
    iget-object v0, p0, Lcom/mopub/nativesdk/b/l;->a:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->b(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/m;->b()V

    .line 271
    return-void
.end method
