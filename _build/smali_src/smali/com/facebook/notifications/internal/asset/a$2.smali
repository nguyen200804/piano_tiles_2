.class Lcom/facebook/notifications/internal/asset/a$2;
.super Lcom/facebook/notifications/internal/utilities/c;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/asset/a;->c(Lorg/json/JSONObject;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/facebook/notifications/internal/asset/a;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/asset/a;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/facebook/notifications/internal/asset/a$2;->b:Lcom/facebook/notifications/internal/asset/a;

    iput-object p2, p0, Lcom/facebook/notifications/internal/asset/a$2;->a:Ljava/util/Set;

    invoke-direct {p0}, Lcom/facebook/notifications/internal/utilities/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/facebook/notifications/internal/utilities/c;->a(Lorg/json/JSONObject;)V

    .line 191
    const-string v0, "_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a$2;->b:Lcom/facebook/notifications/internal/asset/a;

    invoke-static {v1}, Lcom/facebook/notifications/internal/asset/a;->a(Lcom/facebook/notifications/internal/asset/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/asset/a$b;

    .line 193
    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-interface {v0, p1}, Lcom/facebook/notifications/internal/asset/a$b;->a(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a$2;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
