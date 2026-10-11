.class public Lcom/facebook/notifications/internal/configuration/CardConfiguration;
.super Ljava/lang/Object;
.source "CardConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/configuration/CardConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

.field private final c:F

.field private final d:F

.field private final e:I

.field private final f:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$1;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$1;-><init>()V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    const-class v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->b:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->c:F

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->d:F

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->e:I

    .line 120
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    .line 121
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->g:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    .line 122
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
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
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;->a(Ljava/lang/String;)Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->b:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    .line 101
    const-string v0, "cornerRadius"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->c:F

    .line 102
    const-string v0, "contentInset"

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->d:F

    .line 104
    const-string v0, "backdropColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->e:I

    .line 106
    const-string v0, "hero"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    .line 107
    const-string v0, "body"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;Lcom/facebook/notifications/internal/content/a;)Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->g:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    .line 108
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;)Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    .line 109
    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->a:Ljava/lang/String;

    return-object v0
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
    .line 126
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/HeroConfiguration;->a()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->g:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->g:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/BodyConfiguration;->a()V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-virtual {v0}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->a()V

    .line 137
    :cond_2
    return-void
.end method

.method public b()Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->b:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    return-object v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->c:F

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->d:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->e:I

    return v0
.end method

.method public f()Lcom/facebook/notifications/internal/configuration/HeroConfiguration;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    return-object v0
.end method

.method public g()Lcom/facebook/notifications/internal/configuration/BodyConfiguration;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->g:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    return-object v0
.end method

.method public h()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->b:Lcom/facebook/notifications/internal/configuration/CardConfiguration$CardSize;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 178
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 179
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 181
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->f:Lcom/facebook/notifications/internal/configuration/HeroConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 184
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->g:Lcom/facebook/notifications/internal/configuration/BodyConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 185
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/CardConfiguration;->h:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    return-void
.end method
