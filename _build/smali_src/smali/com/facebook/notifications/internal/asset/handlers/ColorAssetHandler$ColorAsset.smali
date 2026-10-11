.class Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;
.super Ljava/lang/Object;
.source "ColorAssetHandler.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/Asset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorAsset"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset$1;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset$1;-><init>()V

    sput-object v0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;->a:I

    .line 114
    return-void
.end method

.method synthetic constructor <init>(ILcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;->a:I

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$1;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    const-string v0, "Color"

    return-object v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/notifications/internal/asset/Asset$a;
        }
    .end annotation

    .prologue
    .line 133
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 142
    iget v0, p0, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler$ColorAsset;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void
.end method
