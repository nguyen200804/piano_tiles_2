.class final Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset$1;
.super Ljava/lang/Object;
.source "BitmapAssetHandler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;-><init>(Landroid/os/Parcel;Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;
    .locals 1

    .prologue
    .line 113
    new-array v0, p1, [Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset$1;->a(Landroid/os/Parcel;)Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset$1;->a(I)[Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;

    move-result-object v0

    return-object v0
.end method
