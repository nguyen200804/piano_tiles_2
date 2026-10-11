.class public Lcom/facebook/notifications/internal/configuration/BodyConfiguration;
.super Ljava/lang/Object;
.source "BodyConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/configuration/BodyConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/notifications/internal/asset/Asset;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/facebook/notifications/internal/content/Content;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration$1;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/configuration/BodyConfiguration$1;-><init>()V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/asset/Asset;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->a:Lcom/facebook/notifications/internal/asset/Asset;

    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/content/Content;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->b:Lcom/facebook/notifications/internal/content/Content;

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/notifications/internal/configuration/BodyConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/notifications/internal/configuration/BodyConfiguration$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetManager"    # Lcom/facebook/notifications/internal/asset/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "contentManager"    # Lcom/facebook/notifications/internal/content/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "background"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/notifications/internal/asset/a;->a(Lorg/json/JSONObject;)Lcom/facebook/notifications/internal/asset/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->a:Lcom/facebook/notifications/internal/asset/Asset;

    .line 59
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    new-instance v0, Lcom/facebook/notifications/internal/content/TextContent;

    invoke-direct {v0, v1}, Lcom/facebook/notifications/internal/content/TextContent;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->b:Lcom/facebook/notifications/internal/content/Content;

    .line 63
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)Lcom/facebook/notifications/internal/configuration/BodyConfiguration;
    .locals 1
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/notifications/internal/asset/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/notifications/internal/content/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;-><init>(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/notifications/internal/asset/Asset$a;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->a:Lcom/facebook/notifications/internal/asset/Asset;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->a:Lcom/facebook/notifications/internal/asset/Asset;

    invoke-interface {v0}, Lcom/facebook/notifications/internal/asset/Asset;->b()V

    .line 84
    :cond_0
    return-void
.end method

.method public b()Lcom/facebook/notifications/internal/asset/Asset;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->a:Lcom/facebook/notifications/internal/asset/Asset;

    return-object v0
.end method

.method public c()Lcom/facebook/notifications/internal/content/Content;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->b:Lcom/facebook/notifications/internal/content/Content;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->a:Lcom/facebook/notifications/internal/asset/Asset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->b:Lcom/facebook/notifications/internal/content/Content;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    return-void
.end method
