.class public Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;
.super Ljava/lang/Object;
.source "GifAssetHandler.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$1;,
        Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/notifications/internal/asset/a$b",
        "<",
        "Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/notifications/internal/asset/Asset;Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    check-cast p1, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;->a(Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1    # Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/facebook/notifications/internal/view/f;

    invoke-virtual {p1}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->c()Lcom/facebook/notifications/internal/utilities/b;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/facebook/notifications/internal/view/f;-><init>(Landroid/content/Context;Lcom/facebook/notifications/internal/utilities/b;)V

    return-object v0
.end method

.method public synthetic a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$a;)Lcom/facebook/notifications/internal/asset/Asset;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;->b(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$a;)Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 59
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 65
    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$a;)Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-interface {p2, v1}, Lcom/facebook/notifications/internal/asset/a$a;->a(Ljava/net/URL;)Ljava/io/File;

    move-result-object v2

    .line 75
    if-nez v2, :cond_0

    .line 85
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v1, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;-><init>(Ljava/io/File;Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$1;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    sget-object v2, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;->a:Ljava/lang/String;

    const-string v3, "JSON key \'url\' was not a valid URL."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 83
    :catch_1
    move-exception v1

    .line 84
    sget-object v2, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;->a:Ljava/lang/String;

    const-string v3, "JSON exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
