.class Lcom/facebook/notifications/internal/asset/a$1;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/notifications/internal/asset/a;->a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/notifications/internal/asset/a$c;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/facebook/notifications/internal/asset/a;


# direct methods
.method constructor <init>(Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/asset/a$c;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/facebook/notifications/internal/asset/a$1;->c:Lcom/facebook/notifications/internal/asset/a;

    iput-object p2, p0, Lcom/facebook/notifications/internal/asset/a$1;->a:Lcom/facebook/notifications/internal/asset/a$c;

    iput-object p3, p0, Lcom/facebook/notifications/internal/asset/a$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/a$1;->a:Lcom/facebook/notifications/internal/asset/a$c;

    iget-object v1, p0, Lcom/facebook/notifications/internal/asset/a$1;->b:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/facebook/notifications/internal/asset/a$c;->a(Lorg/json/JSONObject;)V

    .line 161
    return-void
.end method
