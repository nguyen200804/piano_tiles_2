.class public final Lcom/cmplay/base/util/gif/InputSource$AssetSource;
.super Lcom/cmplay/base/util/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetSource"
.end annotation


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAssetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "assetName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/gif/InputSource;-><init>(Lcom/cmplay/base/util/gif/InputSource$1;)V

    .line 153
    iput-object p1, p0, Lcom/cmplay/base/util/gif/InputSource$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    .line 154
    iput-object p2, p0, Lcom/cmplay/base/util/gif/InputSource$AssetSource;->mAssetName:Ljava/lang/String;

    .line 155
    return-void
.end method


# virtual methods
.method open()Lcom/cmplay/base/util/gif/GifInfoHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcom/cmplay/base/util/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/InputSource$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/cmplay/base/util/gif/InputSource$AssetSource;->mAssetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-object v0
.end method
