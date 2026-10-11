.class public Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;
.super Ljava/lang/Object;
.source "ActionsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;,
        Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

.field private final b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;

.field private final c:Lcom/facebook/notifications/internal/asset/Asset;

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:[Lcom/facebook/notifications/internal/configuration/ActionConfiguration;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final h:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$1;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$1;-><init>()V

    sput-object v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 132
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    .line 133
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;

    .line 135
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/asset/Asset;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->c:Lcom/facebook/notifications/internal/asset/Asset;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->d:F

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->e:F

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->f:F

    .line 141
    sget-object v0, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->g:[Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->h:F

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;)V
    .locals 5
    .param p1, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetManager"    # Lcom/facebook/notifications/internal/asset/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string v0, "style"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;->a(Ljava/lang/String;)Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    .line 111
    const-string v0, "layoutStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;->a(Ljava/lang/String;)Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;

    .line 113
    const-string v0, "background"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/notifications/internal/asset/a;->a(Lorg/json/JSONObject;)Lcom/facebook/notifications/internal/asset/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->c:Lcom/facebook/notifications/internal/asset/Asset;

    .line 115
    const-string v0, "topInset"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->d:F

    .line 116
    const-string v0, "contentInset"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->e:F

    .line 117
    const-string v0, "cornerRadius"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->f:F

    .line 119
    const-string v0, "actions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    iput-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->g:[Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    .line 122
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->g:[Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->g:[Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    new-instance v3, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/notifications/internal/configuration/ActionConfiguration;-><init>(Lorg/json/JSONObject;)V

    aput-object v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    const-string v0, "height"

    const-wide/high16 v2, 0x4046000000000000L    # 44.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->h:F

    .line 127
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;)Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;
    .locals 1
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/notifications/internal/asset/a;
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
    .line 147
    if-nez p0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;

    invoke-direct {v0, p0, p1}, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;-><init>(Lorg/json/JSONObject;Lcom/facebook/notifications/internal/asset/a;)V

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
    .line 154
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->c:Lcom/facebook/notifications/internal/asset/Asset;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->c:Lcom/facebook/notifications/internal/asset/Asset;

    invoke-interface {v0}, Lcom/facebook/notifications/internal/asset/Asset;->b()V

    .line 157
    :cond_0
    return-void
.end method

.method public b()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    return-object v0
.end method

.method public c()Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;

    return-object v0
.end method

.method public d()Lcom/facebook/notifications/internal/asset/Asset;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->c:Lcom/facebook/notifications/internal/asset/Asset;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->d:F

    return v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->e:F

    return v0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->f:F

    return v0
.end method

.method public h()[Lcom/facebook/notifications/internal/configuration/ActionConfiguration;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->g:[Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    return-object v0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->h:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->a:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsStyle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 200
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->b:Lcom/facebook/notifications/internal/configuration/ActionsConfiguration$ActionsLayoutStyle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 202
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->c:Lcom/facebook/notifications/internal/asset/Asset;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 204
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 205
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 206
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 208
    iget-object v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->g:[Lcom/facebook/notifications/internal/configuration/ActionConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 209
    iget v0, p0, Lcom/facebook/notifications/internal/configuration/ActionsConfiguration;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 210
    return-void
.end method
