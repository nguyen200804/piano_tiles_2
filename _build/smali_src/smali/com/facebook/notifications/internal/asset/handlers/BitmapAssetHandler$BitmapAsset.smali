.class Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;
.super Ljava/lang/Object;
.source "BitmapAssetHandler.java"

# interfaces
.implements Lcom/facebook/notifications/internal/asset/Asset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BitmapAsset"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/io/File;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private transient b:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset$1;

    invoke-direct {v0}, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset$1;-><init>()V

    sput-object v0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->a:Ljava/io/File;

    .line 154
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "createdFrom"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->a:Ljava/io/File;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/File;
    .param p2, "x1"    # Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 124
    const/4 v2, 0x1

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 127
    :goto_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 136
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    :goto_1
    return-object v0

    .line 131
    :catch_0
    move-exception v3

    .line 133
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 134
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    invoke-static {}, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IO Exception!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 141
    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 175
    const-string v0, "Image"

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
    .line 180
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/facebook/notifications/internal/asset/Asset$a;

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bitmap cache file does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/facebook/notifications/internal/asset/Asset$a;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 187
    :cond_0
    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->b:Landroid/graphics/Bitmap;

    .line 165
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to decode bitmap from file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/notifications/internal/asset/handlers/BitmapAssetHandler$BitmapAsset;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    return-void
.end method
