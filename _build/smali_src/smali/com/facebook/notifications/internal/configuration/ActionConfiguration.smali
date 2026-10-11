.class public Lcom/facebook/notifications/internal/configuration/ActionConfiguration;
.super Ljava/lang/Object;
.source "ActionConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/configuration/ActionConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:I

.field private final f:Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration$1;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/configuration/ActionConfiguration$1;-><init>()V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->a:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->b:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->c:F

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->d:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->e:I

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->f:Landroid/net/Uri;

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v1, "backgroundColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->a:I

    .line 56
    const-string v1, "borderColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->b:I

    .line 58
    const-string v1, "borderWidth"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->c:F

    .line 60
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->d:Ljava/lang/String;

    .line 61
    const-string v1, "titleColor"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->e:I

    .line 63
    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->f:Landroid/net/Uri;

    .line 65
    return-void

    .line 64
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->b:I

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->c:F

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->e:I

    return v0
.end method

.method public f()Landroid/net/Uri;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 112
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 117
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 121
    return-void
.end method
