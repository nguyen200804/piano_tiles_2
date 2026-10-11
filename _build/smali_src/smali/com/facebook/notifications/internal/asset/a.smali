.class public Lcom/facebook/notifications/internal/asset/a;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/asset/a$c;,
        Lcom/facebook/notifications/internal/asset/a$b;,
        Lcom/facebook/notifications/internal/asset/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/notifications/internal/asset/a/b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/notifications/internal/asset/a$b",
            "<+",
            "Lcom/facebook/notifications/internal/asset/Asset;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/facebook/notifications/internal/asset/a/b;

    invoke-direct {v0, p1}, Lcom/facebook/notifications/internal/asset/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->a:Lcom/facebook/notifications/internal/asset/a/b;

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->b:Ljava/util/Map;

    .line 114
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->b:Ljava/util/Map;

    const-string v1, "Color"

    new-instance v2, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;

    invoke-direct {v2}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->b:Ljava/util/Map;

    const-string v1, "Image"

    new-instance v2, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler;

    invoke-direct {v2}, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->b:Ljava/util/Map;

    const-string v1, "GIF"

    new-instance v2, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;

    invoke-direct {v2}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/facebook/notifications/internal/asset/a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
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
    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 206
    :goto_0
    return-object v0

    .line 185
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    new-instance v1, Lcom/facebook/notifications/internal/asset/a$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/notifications/internal/asset/a$2;-><init>(Lcom/facebook/notifications/internal/asset/a;Ljava/util/Set;)V

    invoke-static {p1, v1}, Lcom/facebook/notifications/internal/utilities/c;->a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/utilities/c;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/notifications/internal/asset/Asset;Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1    # Lcom/facebook/notifications/internal/asset/Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AssetType::",
            "Lcom/facebook/notifications/internal/asset/Asset;",
            ">(TAssetType;",
            "Landroid/content/Context;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-interface {p1}, Lcom/facebook/notifications/internal/asset/Asset;->a()Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/asset/a$b;

    .line 143
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not registered!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/facebook/notifications/internal/asset/a$b;->a(Lcom/facebook/notifications/internal/asset/Asset;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/facebook/notifications/internal/asset/Asset;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 124
    if-nez p1, :cond_0

    move-object v0, v1

    .line 134
    :goto_0
    return-object v0

    .line 128
    :cond_0
    const-string v0, "_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/facebook/notifications/internal/asset/a;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/asset/a$b;

    .line 130
    if-nez v0, :cond_1

    move-object v0, v1

    .line 131
    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a;->a:Lcom/facebook/notifications/internal/asset/a/b;

    invoke-interface {v0, p1, v1}, Lcom/facebook/notifications/internal/asset/a$b;->a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$a;)Lcom/facebook/notifications/internal/asset/Asset;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->a:Lcom/facebook/notifications/internal/asset/a/b;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/asset/a/b;->a()V

    .line 178
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/facebook/notifications/internal/asset/a$b;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/notifications/internal/asset/a$b",
            "<+",
            "Lcom/facebook/notifications/internal/asset/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$c;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/asset/a$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->a:Lcom/facebook/notifications/internal/asset/a/b;

    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/asset/a;->c(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/facebook/notifications/internal/asset/a$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/facebook/notifications/internal/asset/a$1;-><init>(Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/asset/a$c;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/notifications/internal/asset/a/b;->a(Ljava/util/Set;Lcom/facebook/notifications/internal/asset/a/b$a;)V

    .line 163
    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a;->a:Lcom/facebook/notifications/internal/asset/a/b;

    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/asset/a;->c(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/notifications/internal/asset/a/b;->a(Ljava/util/Set;)V

    .line 171
    return-void
.end method
