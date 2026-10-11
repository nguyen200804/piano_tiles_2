.class final Lcom/mopub/nativesdk/b/i;
.super Ljava/lang/Object;
.source "WEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/mopub/nativesdk/b/h;


# direct methods
.method constructor <init>(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mopub/nativesdk/b/i;->c:Lcom/mopub/nativesdk/b/h;

    iput-object p2, p0, Lcom/mopub/nativesdk/b/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/nativesdk/b/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mopub/nativesdk/b/i;->c:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->a(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mopub/nativesdk/b/a;->c:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mopub/nativesdk/b/i;->c:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->b(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/m;->b()V

    .line 108
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativesdk/b/i;->c:Lcom/mopub/nativesdk/b/h;

    iget-object v1, p0, Lcom/mopub/nativesdk/b/i;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/nativesdk/b/h;->a(Lcom/mopub/nativesdk/b/h;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/mopub/nativesdk/b/i;->c:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->c(Lcom/mopub/nativesdk/b/h;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/mopub/nativesdk/b/i;->c:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->d(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/o;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativesdk/b/n;

    iget-object v2, p0, Lcom/mopub/nativesdk/b/i;->c:Lcom/mopub/nativesdk/b/h;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mopub/nativesdk/b/n;-><init>(Lcom/mopub/nativesdk/b/h;B)V

    invoke-static {}, Lcom/mopub/nativesdk/b/h;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/nativesdk/b/o;->a(Ljava/lang/Runnable;J)V

    .line 104
    iget-object v0, p0, Lcom/mopub/nativesdk/b/i;->c:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->c(Lcom/mopub/nativesdk/b/h;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativesdk/b/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativesdk/b/i;->c:Lcom/mopub/nativesdk/b/h;

    invoke-static {v0}, Lcom/mopub/nativesdk/b/h;->b(Lcom/mopub/nativesdk/b/h;)Lcom/mopub/nativesdk/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/b/m;->b()V

    goto :goto_0
.end method
