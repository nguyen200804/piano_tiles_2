.class public Lcom/cmplay/base/util/gif/InputSource$AssetFileDescriptorSource;
.super Lcom/cmplay/base/util/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetFileDescriptorSource"
.end annotation


# instance fields
.field private final mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 1
    .param p1, "assetFileDescriptor"    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/gif/InputSource;-><init>(Lcom/cmplay/base/util/gif/InputSource$1;)V

    .line 241
    iput-object p1, p0, Lcom/cmplay/base/util/gif/InputSource$AssetFileDescriptorSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 242
    return-void
.end method


# virtual methods
.method open()Lcom/cmplay/base/util/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/cmplay/base/util/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/InputSource$AssetFileDescriptorSource;->mAssetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-object v0
.end method
