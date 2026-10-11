.class public Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;
.super Ljava/lang/Object;
.source "ColorAssetHandler.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$1;,
        Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$a;,
        Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/notifications/internal/asset/a$b",
        "<",
        "Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 59
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    const/16 v2, 0x10

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 65
    const/16 v2, 0x8

    shr-long v2, v0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v0, v4

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/notifications/internal/asset/Asset;Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a(Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1    # Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;
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
    .line 91
    new-instance v0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$a;

    invoke-virtual {p1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;->c()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$a;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public synthetic a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$a;)Lcom/facebook/notifications/internal/asset/Asset;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->b(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$a;)Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 1
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
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$a;)Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;
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
    const/4 v1, 0x0

    .line 81
    :try_start_0
    new-instance v0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;

    const-string v2, "rgbaHex"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;-><init>(ILcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$1;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    sget-object v2, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a:Ljava/lang/String;

    const-string v3, "JSON Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 84
    goto :goto_0
.end method
