.class final Lcom/mnt/impl/f/o$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mnt/impl/f/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mnt/impl/f/o$b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/mnt/impl/f/o$a$a;

.field private c:Lcom/mnt/impl/f/o$b$a;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mnt/impl/f/o$a$a;Lcom/mnt/impl/f/o$b$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mnt/impl/f/o$b;->d:Ljava/lang/String;

    .line 171
    iput v1, p0, Lcom/mnt/impl/f/o$b;->e:I

    .line 172
    iput-boolean v1, p0, Lcom/mnt/impl/f/o$b;->f:Z

    .line 179
    new-instance v0, Lcom/mnt/impl/f/p;

    invoke-direct {v0, p0}, Lcom/mnt/impl/f/p;-><init>(Lcom/mnt/impl/f/o$b;)V

    iput-object v0, p0, Lcom/mnt/impl/f/o$b;->g:Ljava/lang/Runnable;

    .line 175
    iput-object p1, p0, Lcom/mnt/impl/f/o$b;->b:Lcom/mnt/impl/f/o$a$a;

    .line 176
    iput-object p2, p0, Lcom/mnt/impl/f/o$b;->c:Lcom/mnt/impl/f/o$b$a;

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/f/o$b;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mnt/impl/f/o$b;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/mnt/impl/f/o$b;->f:Z

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mnt/impl/f/o$b;->f:Z

    .line 259
    iget-object v0, p0, Lcom/mnt/impl/f/o$b;->b:Lcom/mnt/impl/f/o$a$a;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/mnt/impl/f/o$b;->b:Lcom/mnt/impl/f/o$a$a;

    invoke-interface {v0}, Lcom/mnt/impl/f/o$a$a;->d()V

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/mnt/impl/f/o$b;->b()V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mnt/impl/f/o$b;->c:Lcom/mnt/impl/f/o$b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mnt/impl/f/o$b;->c:Lcom/mnt/impl/f/o$b$a;

    invoke-interface {v0}, Lcom/mnt/impl/f/o$b$a;->a()V

    .line 271
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mnt/impl/f/o$b;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/mnt/impl/f/o$b;->a()V

    return-void
.end method


# virtual methods
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mnt/impl/f/o$b;->a:Landroid/webkit/WebView;

    .line 192
    iget-object v0, p0, Lcom/mnt/impl/f/o$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/mnt/impl/f/o$b;->d:Ljava/lang/String;

    .line 193
    :cond_0
    iget v0, p0, Lcom/mnt/impl/f/o$b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mnt/impl/f/o$b;->e:I

    .line 194
    iget v0, p0, Lcom/mnt/impl/f/o$b;->e:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 196
    invoke-static {}, Lcom/mnt/impl/f/o;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mnt/impl/f/o$b;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    sget-object v0, Lcom/mnt/impl/e;->gy:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mnt/impl/f/o$b;->a()V

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lcom/mnt/impl/f/o;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mnt/impl/f/o$b;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    invoke-static {}, Lcom/mnt/impl/f/o;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mnt/impl/f/o$b;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mnt/impl/e;->gA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mnt/impl/f/o$b;->a()V

    .line 228
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 208
    if-nez p2, :cond_1

    .line 209
    invoke-static {}, Lcom/mnt/impl/f/o;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/mnt/impl/f/o$b;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 211
    sget-object v0, Lcom/mnt/impl/e;->gz:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mnt/impl/f/o$b;->a()V

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 1280
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 212
    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    .line 213
    invoke-static {}, Lcom/mnt/impl/f/o;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/mnt/impl/f/o$b;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 2237
    iget-boolean v0, p0, Lcom/mnt/impl/f/o$b;->f:Z

    if-nez v0, :cond_0

    .line 2240
    iput-boolean v1, p0, Lcom/mnt/impl/f/o$b;->f:Z

    .line 2241
    iget-object v0, p0, Lcom/mnt/impl/f/o$b;->b:Lcom/mnt/impl/f/o$a$a;

    if-eqz v0, :cond_3

    .line 2242
    iget-object v0, p0, Lcom/mnt/impl/f/o$b;->b:Lcom/mnt/impl/f/o$a$a;

    invoke-interface {v0, p2}, Lcom/mnt/impl/f/o$a$a;->a(Ljava/lang/String;)V

    .line 2244
    :cond_3
    invoke-direct {p0}, Lcom/mnt/impl/f/o$b;->b()V

    goto :goto_0

    .line 1284
    :cond_4
    sget-object v2, Lcom/mnt/impl/e;->gB:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/mnt/impl/e;->gC:Ljava/lang/String;

    .line 1285
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/mnt/impl/e;->gD:Ljava/lang/String;

    .line 1286
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/mnt/impl/e;->gE:Ljava/lang/String;

    .line 1287
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/mnt/impl/e;->gF:Ljava/lang/String;

    .line 1288
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_5
    move v0, v1

    goto :goto_1

    .line 217
    :cond_6
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/mnt/impl/f/o;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/mnt/impl/f/o$b;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    invoke-static {}, Lcom/mnt/impl/f/o;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/mnt/impl/f/o$b;->g:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
