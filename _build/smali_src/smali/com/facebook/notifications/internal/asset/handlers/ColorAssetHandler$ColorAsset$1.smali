.class final Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset$1;
.super Ljava/lang/Object;
.source "ColorAssetHandler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;
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
        "Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;-><init>(Landroid/os/Parcel;Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;
    .locals 1

    .prologue
    .line 106
    new-array v0, p1, [Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset$1;->a(Landroid/os/Parcel;)Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset$1;->a(I)[Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;

    move-result-object v0

    return-object v0
.end method
