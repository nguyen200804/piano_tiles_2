.class final Lcom/cmcm/orion/picks/a/a/g$a;
.super Ljava/lang/Object;
.source "CmMarketHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmcm/orion/picks/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/g$a;->a:Ljava/util/List;

    .line 111
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/g$a;->b:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/cmcm/orion/picks/a/a/g$a;->a:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, p1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void

    .line 152
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 116
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v2

    .line 119
    const-string v3, "action"

    const-string v4, "get_config"

    invoke-direct {p0, v3, v4}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    const-string v3, "mid"

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/g$a;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v3, "lan"

    const-string v4, "%s_%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v0, "brand"

    const-string v1, "ro.product.brand"

    const-string v3, "unknow"

    invoke-static {v1, v3}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "model"

    const-string v1, "ro.product.model"

    const-string v3, "unknow"

    invoke-static {v1, v3}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v0, "androidid"

    invoke-static {}, Lcom/cmcm/orion/utils/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    if-eqz v2, :cond_0

    .line 126
    const-string v0, "cver"

    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->e(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v0, "mcc"

    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    const-string v0, "mnc"

    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v0, "resolution"

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/a$1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_0
    const-string v0, "ov"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v0, "ch"

    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v0, "gaid"

    invoke-static {}, Lcom/cmcm/orion/picks/a/a/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v0, "lv"

    const-string v1, "4.3.4"

    invoke-direct {p0, v0, v1}, Lcom/cmcm/orion/picks/a/a/g$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :try_start_0
    sget-object v0, Lcom/cmcm/orion/picks/a/a/g;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 138
    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/g$a;->a:Ljava/util/List;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/utils/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_1

    .line 142
    invoke-static {v0}, Lcom/cmcm/orion/picks/a/a/h;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConfigRefreshRunnable: e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
