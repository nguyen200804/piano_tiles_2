.class Lcom/duapps/ad/c/a/d$a;
.super Ljava/lang/Object;
.source "StrategyPuller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duapps/ad/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    .line 218
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/c/a/d$a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/c/a/d$a;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/duapps/ad/c/a/d$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 221
    .line 223
    :try_start_0
    const-string v0, "datas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v2, "decode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strategy decode succ:--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/duapps/ad/c/a/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 231
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 232
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 233
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 234
    if-nez v3, :cond_0

    .line 232
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v0, "datas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 228
    const-string v1, "decode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strategy decode fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_0
    const-string v4, "sid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 238
    iget-object v5, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/duapps/ad/base/m;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_2

    .line 241
    :cond_1
    const-string v1, "tcppTctp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/duapps/ad/base/m;->f(Landroid/content/Context;I)V

    .line 243
    const-string v1, "TEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tcppTctp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->d(Landroid/content/Context;)V

    .line 246
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    .line 253
    invoke-static {v1}, Lcom/duapps/ad/base/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    .line 252
    invoke-static {v0, v1, v4}, Lcom/duapps/ad/base/g;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 254
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duapps/ad/base/p;->a()Ljava/util/HashSet;

    move-result-object v0

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    const/16 v1, -0x66

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 310
    invoke-static {v0, v1, v2, v3}, Lcom/duapps/ad/stats/c;->a(Landroid/content/Context;IJ)V

    .line 314
    :goto_1
    iget-object v0, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/c/a/e;->a(Landroid/content/Context;)Lcom/duapps/ad/c/a/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duapps/ad/c/a/e;->a(Ljava/lang/String;)V

    .line 315
    return-void

    .line 263
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 265
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_1
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sid"

    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "res"

    const-string v5, "1080*460,244*244,170*170,108*108"

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/duapps/ad/c/a/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v0, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get src priority url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v0, Lcom/duapps/ad/c/a/d$a$1;

    invoke-direct {v0, p0, v2, v3}, Lcom/duapps/ad/c/a/d$a$1;-><init>(Lcom/duapps/ad/c/a/d$a;J)V

    iget-object v4, p0, Lcom/duapps/ad/c/a/d$a;->a:Landroid/content/Context;

    .line 308
    invoke-static {v4}, Lcom/duapps/ad/base/m;->f(Landroid/content/Context;)J

    move-result-wide v4

    .line 273
    invoke-static {v1, v0, v4, v5}, Lcom/duapps/ad/base/r;->a(Ljava/net/URL;Lcom/duapps/ad/base/r$b;J)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
