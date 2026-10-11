.class public Lcom/facebook/notifications/internal/configuration/HeroConfiguration;
.super Ljava/lang/Object;
.source "HeroConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/configuration/HeroConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:F

.field private final b:Lcom/facebook/notifications/internal/asset/Asset;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/facebook/notifications/internal/content/Content;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration$1;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration$1;-><init>()V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->a:F

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/asset/Asset;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->b:Lcom/facebook/notifications/internal/asset/Asset;

    .line 77
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/content/Content;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->c:Lcom/facebook/notifications/internal/content/Content;

    .line 78
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->d:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/notifications/internal/configuration/HeroConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/notifications/internal/configuration/HeroConfiguration$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)V
    .locals 4
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
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "height"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->a:F

    .line 60
    const-string v0, "background"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/notifications/internal/asset/a;->a(Lorg/json/JSONObject;)Lcom/facebook/notifications/internal/asset/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->b:Lcom/facebook/notifications/internal/asset/Asset;

    .line 63
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    new-instance v0, Lcom/facebook/notifications/internal/content/TextContent;

    invoke-direct {v0, v1}, Lcom/facebook/notifications/internal/content/TextContent;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->c:Lcom/facebook/notifications/internal/content/Content;

    .line 68
    const-string v0, "contentAlign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;->a(Ljava/lang/String;)Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->d:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    .line 69
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)Lcom/facebook/notifications/internal/configuration/HeroConfiguration;
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
    .line 95
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;-><init>(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)V

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
    .line 102
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->b:Lcom/facebook/notifications/internal/asset/Asset;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->b:Lcom/facebook/notifications/internal/asset/Asset;

    invoke-interface {v0}, Lcom/facebook/notifications/internal/asset/Asset;->b()V

    .line 105
    :cond_0
    return-void
.end method

.method public b()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->a:F

    return v0
.end method

.method public c()Lcom/facebook/notifications/internal/asset/Asset;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->b:Lcom/facebook/notifications/internal/asset/Asset;

    return-object v0
.end method

.method public d()Lcom/facebook/notifications/internal/content/Content;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->c:Lcom/facebook/notifications/internal/content/Content;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->d:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 132
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 133
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->b:Lcom/facebook/notifications/internal/asset/Asset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->c:Lcom/facebook/notifications/internal/content/Content;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->d:Lcom/facebook/notifications/internal/content/Content$VerticalAlignment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    return-void
.end method
