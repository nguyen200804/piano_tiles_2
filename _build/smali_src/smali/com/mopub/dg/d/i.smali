.class final Lcom/mopub/dg/d/i;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/mopub/dg/d/h;Landroid/content/Context;Lcom/mopub/dg/d/j;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/dg/d/i;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/dg/d/i;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/dg/d/i;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mopub/dg/d/i;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/dg/d/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/dg/d/h;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-static {v0}, Lcom/mopub/dg/d/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/c;

    move-result-object v2

    iget-object v3, v2, Lcom/mopub/dg/d/c;->a:Ljava/lang/String;

    iget-boolean v2, v2, Lcom/mopub/dg/d/c;->b:Z

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/mopub/dg/d/b/b;->a(Landroid/content/Context;)Lcom/mopub/dg/d/b/b;

    move-result-object v0

    invoke-static {}, Lcom/mopub/dg/d/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/mopub/dg/d/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lcom/mopub/dg/d/h;->a(Lcom/mopub/dg/d/h;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Unable to obtain Google AdvertisingIdClient.Info via reflection."

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/mopub/dg/d/n;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/mopub/dg/c/g;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "DG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "DG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/mopub/dg/d/i;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/mopub/dg/d/i;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/dg/d/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mopub/dg/d/j;->a()V

    :cond_0
    return-void
.end method
