.class Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;
.super Ljava/lang/Object;
.source "GifAssetHandler.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/Asset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifAsset"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private transient b:Lcom/facebook/notifications/internal/utilities/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset$1;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset$1;-><init>()V

    sput-object v0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->a:Ljava/io/File;

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$1;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "createdFrom"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->a:Ljava/io/File;

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$1;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private static a(Ljava/io/File;)Lcom/facebook/notifications/internal/utilities/b;
    .locals 6
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 114
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 118
    :cond_1
    long-to-int v1, v2

    new-array v2, v1, [B

    .line 121
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    const/4 v1, 0x0

    .line 126
    :goto_1
    :try_start_1
    array-length v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, v1

    .line 127
    if-nez v4, :cond_2

    .line 137
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    new-instance v0, Lcom/facebook/notifications/internal/utilities/b;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/utilities/b;-><init>()V

    .line 145
    invoke-virtual {v0, v2}, Lcom/facebook/notifications/internal/utilities/b;->a([B)I

    goto :goto_0

    .line 130
    :cond_2
    :try_start_3
    invoke-virtual {v3, v2, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 131
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 132
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File was shorter than expected!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 139
    :catch_0
    move-exception v1

    .line 140
    invoke-static {}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IO Exception while reading GIF data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 134
    :cond_3
    add-int/2addr v1, v4

    .line 135
    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 180
    const-string v0, "GIF"

    return-object v0
.end method

.method public b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/notifications/internal/asset/Asset$a;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/facebook/notifications/internal/asset/Asset$a;

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GIF cache file does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/facebook/notifications/internal/asset/Asset$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 192
    :cond_0
    return-void
.end method

.method public c()Lcom/facebook/notifications/internal/utilities/b;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->b:Lcom/facebook/notifications/internal/utilities/b;

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->a(Ljava/io/File;)Lcom/facebook/notifications/internal/utilities/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->b:Lcom/facebook/notifications/internal/utilities/b;

    .line 170
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->b:Lcom/facebook/notifications/internal/utilities/b;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to decode GIF"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->b:Lcom/facebook/notifications/internal/utilities/b;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/GifAssetHandler$GifAsset;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    return-void
.end method
