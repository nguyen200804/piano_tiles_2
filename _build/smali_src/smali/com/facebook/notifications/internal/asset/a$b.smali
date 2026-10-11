.class public interface abstract Lcom/facebook/notifications/internal/asset/a$b;
.super Ljava/lang/Object;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/asset/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AssetType::",
        "Lcom/facebook/notifications/internal/asset/Asset;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/facebook/notifications/internal/asset/Asset;Landroid/content/Context;)Landroid/view/View;
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
            "(TAssetType;",
            "Landroid/content/Context;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public abstract a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a$a;)Lcom/facebook/notifications/internal/asset/Asset;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/facebook/notifications/internal/asset/a$a;",
            ")TAssetType;"
        }
    .end annotation
.end method

.method public abstract a(Lorg/json/JSONObject;)Ljava/util/Set;
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
.end method
