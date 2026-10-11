.class final Lcom/cmplay/base/util/k$1;
.super Ljava/lang/Object;
.source "MarketUtil.java"

# interfaces
.implements Lcom/cmplay/base/util/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmplay/base/util/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmplay/base/util/t;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/cmplay/base/util/k$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmplay/base/util/k$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 227
    const-string v0, "internal_push_url"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smartGo2GooglePlay  GetGooglePlayUrlFinished  url\u91cd\u5b9a\u5411\u540e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/cmplay/base/util/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/cmplay/base/util/k$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmplay/base/util/a;->a(Landroid/content/Context;)V

    .line 231
    invoke-static {p1}, Lcom/cmplay/base/util/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/base/util/k$1;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/base/util/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x1

    .line 233
    const-string v1, "internal_push_url"

    const-string v2, "smartGo2GooglePlay  GetGooglePlayUrlFinished  GP\u6253\u5f00 \u6210\u529f"

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    invoke-static {v0}, Lcom/cmplay/base/util/k;->a(Z)V

    .line 249
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/cmplay/base/util/k$1;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    const-string v0, "internal_push_url"

    const-string v1, "smartGo2GooglePlay  GetGooglePlayUrlFinished  GP\u5931\u8d25   openBrowserByUrl by defaultJumpUrl"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/cmplay/base/util/k$1;->b:Ljava/lang/String;

    .line 244
    :goto_1
    iget-object v0, p0, Lcom/cmplay/base/util/k$1;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/cmplay/base/util/k;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_2
    const-string v0, "internal_push_url"

    const-string v1, "smartGo2GooglePlay  GetGooglePlayUrlFinished  GP\u5931\u8d25   openBrowserByUrl by url"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
