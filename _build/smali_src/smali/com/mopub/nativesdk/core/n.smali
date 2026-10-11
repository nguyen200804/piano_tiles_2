.class public Lcom/mopub/nativesdk/core/n;
.super Ljava/lang/Object;
.source "RRManager.java"


# static fields
.field private static b:Lcom/mopub/nativesdk/core/n;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/n;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mopub/nativesdk/core/n;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/mopub/nativesdk/core/n;->b:Lcom/mopub/nativesdk/core/n;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/mopub/nativesdk/core/n;

    invoke-direct {v0, p0}, Lcom/mopub/nativesdk/core/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mopub/nativesdk/core/n;->b:Lcom/mopub/nativesdk/core/n;

    .line 46
    :cond_0
    sget-object v0, Lcom/mopub/nativesdk/core/n;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/nativesdk/core/n;->c:Ljava/util/Map;

    .line 49
    :cond_1
    sget-object v0, Lcom/mopub/nativesdk/core/n;->b:Lcom/mopub/nativesdk/core/n;

    return-object v0
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/n;Lcom/mopub/nativesdk/Campaign;Lcom/mopub/nativesdk/core/w;)V
    .locals 4

    .prologue
    .line 31
    .line 1261
    if-eqz p1, :cond_0

    .line 1262
    new-instance v0, Lcom/mopub/nativesdk/b/b;

    invoke-direct {v0}, Lcom/mopub/nativesdk/b/b;-><init>()V

    .line 1263
    iget-object v1, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mopub/nativesdk/Campaign;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mopub/nativesdk/core/ah;

    invoke-direct {v3, p0, p1, p2}, Lcom/mopub/nativesdk/core/ah;-><init>(Lcom/mopub/nativesdk/core/n;Lcom/mopub/nativesdk/Campaign;Lcom/mopub/nativesdk/core/w;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mopub/nativesdk/b/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativesdk/b/f;)V

    .line 31
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " sendReferAndActive() : refer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   pkgName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v0, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    .line 1236
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.INSTALL_REFERRER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1237
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    .line 1238
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1241
    :cond_0
    const-string v2, "%3D"

    const-string v3, "="

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%26"

    const-string v4, "&"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    const-string v3, "referrer"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1248
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/mopub/nativesdk/core/n;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/nativesdk/a/d;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/a/d;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativesdk/a/b;->a(Lcom/mopub/nativesdk/a/d;)Lcom/mopub/nativesdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativesdk/a/b;->a()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativesdk/core/x;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/x;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mopub/nativesdk/a/d;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/a/d;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/nativesdk/a/b;->a(Lcom/mopub/nativesdk/a/d;)Lcom/mopub/nativesdk/a/b;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mopub/nativesdk/a/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/mopub/nativesdk/core/n;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 81
    sget-object v0, Lcom/mopub/nativesdk/core/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .prologue
    .line 61
    new-instance v0, Lcom/mopub/nativesdk/core/x;

    invoke-direct {v0}, Lcom/mopub/nativesdk/core/x;-><init>()V

    .line 62
    invoke-virtual {v0, p1}, Lcom/mopub/nativesdk/core/x;->a(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p4}, Lcom/mopub/nativesdk/core/x;->b(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p2, p3}, Lcom/mopub/nativesdk/core/x;->b(J)V

    .line 65
    invoke-virtual {v0}, Lcom/mopub/nativesdk/core/x;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mopub/nativesdk/core/x;->a(J)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/nativesdk/a/d;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/a/d;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/nativesdk/a/b;->a(Lcom/mopub/nativesdk/a/d;)Lcom/mopub/nativesdk/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/nativesdk/a/b;->a(Lcom/mopub/nativesdk/core/x;)Ljava/lang/String;

    .line 68
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/mopub/nativesdk/core/w;)V
    .locals 5

    .prologue
    .line 207
    const-string v0, "RRManager"

    const-string v1, " getReferFromNetByPkgName()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/mopub/nativesdk/c/d;

    iget-object v1, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/nativesdk/c/d;-><init>(Landroid/content/Context;)V

    .line 211
    iget-object v1, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    const-string v2, "ak.native.sdk"

    const-string v3, "APPID"

    const-string v4, "5745-186"

    invoke-static {v1, v2, v3, v4}, Lcom/mopub/nativesdk/d/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/c/d;->a(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    const-string v2, "ak.native.sdk"

    const-string v3, "SUBID"

    const-string v4, "1"

    invoke-static {v1, v2, v3, v4}, Lcom/mopub/nativesdk/d/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/nativesdk/c/d;->b(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, p1}, Lcom/mopub/nativesdk/c/d;->d(Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x0

    new-instance v2, Lcom/mopub/nativesdk/core/af;

    invoke-direct {v2, p0, p1, p2}, Lcom/mopub/nativesdk/core/af;-><init>(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;Lcom/mopub/nativesdk/core/w;)V

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativesdk/c/d;->a(ILcom/mopub/nativesdk/c/l;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 95
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mopub/nativesdk/a/d;->a(Landroid/content/Context;)Lcom/mopub/nativesdk/a/d;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/nativesdk/a/b;->a(Lcom/mopub/nativesdk/a/d;)Lcom/mopub/nativesdk/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mopub/nativesdk/a/b;->a(Ljava/lang/String;)Lcom/mopub/nativesdk/core/x;

    move-result-object v1

    .line 97
    if-nez v1, :cond_1

    .line 100
    new-instance v1, Lcom/mopub/nativesdk/core/aa;

    invoke-direct {v1, p0, p1}, Lcom/mopub/nativesdk/core/aa;-><init>(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;Lcom/mopub/nativesdk/core/w;)V

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-virtual {v1}, Lcom/mopub/nativesdk/core/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/mopub/nativesdk/core/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/mopub/nativesdk/core/a;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 127
    :cond_2
    :try_start_1
    sget-object v1, Lcom/mopub/nativesdk/core/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Lcom/mopub/nativesdk/c/e;

    invoke-direct {v1}, Lcom/mopub/nativesdk/c/e;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/mopub/nativesdk/core/n;->a:Landroid/content/Context;

    new-instance v3, Lcom/mopub/nativesdk/core/ac;

    invoke-direct {v3, p0, p1}, Lcom/mopub/nativesdk/core/ac;-><init>(Lcom/mopub/nativesdk/core/n;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/mopub/nativesdk/c/e;->a(Landroid/content/Context;Lcom/mopub/nativesdk/c/k;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    const/4 v0, 0x1

    goto :goto_0
.end method
