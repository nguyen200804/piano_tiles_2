.class public final Lcom/cmplay/base/util/gif/InputSource$ByteArraySource;
.super Lcom/cmplay/base/util/gif/InputSource;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteArraySource"
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cmplay/base/util/gif/InputSource;-><init>(Lcom/cmplay/base/util/gif/InputSource$1;)V

    .line 76
    iput-object p1, p0, Lcom/cmplay/base/util/gif/InputSource$ByteArraySource;->bytes:[B

    .line 77
    return-void
.end method


# virtual methods
.method open()Lcom/cmplay/base/util/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cmplay/base/util/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/cmplay/base/util/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/cmplay/base/util/gif/InputSource$ByteArraySource;->bytes:[B

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/gif/GifInfoHandle;-><init>([B)V

    return-object v0
.end method
