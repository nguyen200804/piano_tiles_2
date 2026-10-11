.class public final Lcom/cmcm/orion/picks/webview/c;
.super Ljava/lang/Object;
.source "ParseWebViewUrlUtils.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Lcom/cmcm/orion/picks/impl/a$a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->d:Lcom/cmcm/orion/picks/impl/a$a;

    .line 44
    invoke-static {p1}, Lcom/cmcm/orion/picks/webview/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 82
    :goto_1
    return-void

    .line 53
    :cond_1
    new-instance v0, Lcom/cmcm/orion/picks/webview/c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cmcm/orion/picks/webview/c$1;-><init>(Lcom/cmcm/orion/picks/webview/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->c:Landroid/os/Handler;

    .line 76
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/webview/c;Lcom/cmcm/orion/picks/webview/e;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/webview/c;->a(Lcom/cmcm/orion/picks/webview/e;)V

    return-void
.end method

.method private a(Lcom/cmcm/orion/picks/webview/e;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->d:Lcom/cmcm/orion/picks/impl/a$a;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->d:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-interface {v0, p1}, Lcom/cmcm/orion/picks/impl/a$a;->b(Lcom/cmcm/orion/picks/webview/e;)V

    .line 189
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 192
    .line 195
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/databases/webviewCache.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    :goto_0
    return v0

    .line 199
    :cond_0
    const-string v2, "webviewCache.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 200
    if-eqz v1, :cond_2

    .line 201
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 212
    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 208
    :cond_2
    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .line 208
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0

    .line 208
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/webview/c;)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/webview/c;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/webview/c;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/webview/c;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/webview/c;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/cmcm/orion/picks/webview/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cmcm/orion/picks/webview/c;->d:Lcom/cmcm/orion/picks/impl/a$a;

    .line 41
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Lcom/cmcm/orion/picks/webview/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/webview/c;->a(Lcom/cmcm/orion/picks/webview/e;)V

    .line 179
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, Lcom/cmcm/orion/picks/webview/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/webview/c;->a(Lcom/cmcm/orion/picks/webview/e;)V

    goto :goto_0

    .line 95
    :cond_2
    iput-object p1, p0, Lcom/cmcm/orion/picks/webview/c;->e:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/cmcm/orion/picks/webview/c;->f:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/cmcm/orion/picks/webview/c;->g:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/cmcm/orion/picks/webview/c;->h:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/cmcm/orion/picks/webview/c$2;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/webview/c$2;-><init>(Lcom/cmcm/orion/picks/webview/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 174
    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "</html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/cmcm/orion/picks/webview/c;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
