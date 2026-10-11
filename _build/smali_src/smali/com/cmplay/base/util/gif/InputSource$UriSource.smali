.class public final Lcom/cmplay/base/util/gif/InputSource$UriSource;
.super Lcom/cmplay/base/util/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UriSource"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/gif/InputSource;-><init>(Lcom/cmplay/base/util/gif/InputSource$1;)V

    .line 129
    iput-object p1, p0, Lcom/cmplay/base/util/gif/InputSource$UriSource;->mContentResolver:Landroid/content/ContentResolver;

    .line 130
    iput-object p2, p0, Lcom/cmplay/base/util/gif/InputSource$UriSource;->mUri:Landroid/net/Uri;

    .line 131
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
    .line 135
    iget-object v0, p0, Lcom/cmplay/base/util/gif/InputSource$UriSource;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/InputSource$UriSource;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;->openUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/cmplay/base/util/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method
