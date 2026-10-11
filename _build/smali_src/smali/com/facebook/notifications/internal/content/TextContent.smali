.class public Lcom/facebook/notifications/internal/content/TextContent;
.super Ljava/lang/Object;
.source "TextContent.java"

# interfaces
.implements Lcom/facebook/notifications/internal/content/Content;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/notifications/internal/content/TextContent$Alignment;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/content/TextContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:F

.field private final e:Lcom/facebook/notifications/internal/content/TextContent$Alignment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/notifications/internal/content/TextContent$1;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/content/TextContent$1;-><init>()V

    sput-object v0, Lcom/facebook/notifications/internal/content/TextContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->b:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->c:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->d:F

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    iput-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->e:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->a:Ljava/lang/String;

    .line 82
    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/notifications/internal/asset/handlers/ColorAssetHandler;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->b:I

    .line 84
    const-string v0, "font"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->c:Ljava/lang/String;

    .line 85
    const-string v0, "size"

    const-wide/high16 v2, 0x4032000000000000L    # 18.0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->d:F

    .line 87
    const-string v0, "align"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/notifications/internal/content/TextContent$Alignment;->a(Ljava/lang/String;)Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->e:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    .line 88
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->d:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/facebook/notifications/internal/content/TextContent$Alignment;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->e:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 135
    iget-object v0, p0, Lcom/facebook/notifications/internal/content/TextContent;->e:Lcom/facebook/notifications/internal/content/TextContent$Alignment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    return-void
.end method
