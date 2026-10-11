.class Lcom/cmplay/base/util/gif/GifViewUtils$InitResult;
.super Ljava/lang/Object;
.source "GifViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/gif/GifViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitResult"
.end annotation


# instance fields
.field final mBackgroundResId:I

.field final mFreezesAnimation:Z

.field final mSourceResId:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "sourceResId"    # I
    .param p2, "backgroundResId"    # I
    .param p3, "freezesAnimation"    # Z

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p1, p0, Lcom/cmplay/base/util/gif/GifViewUtils$InitResult;->mSourceResId:I

    .line 118
    iput p2, p0, Lcom/cmplay/base/util/gif/GifViewUtils$InitResult;->mBackgroundResId:I

    .line 119
    iput-boolean p3, p0, Lcom/cmplay/base/util/gif/GifViewUtils$InitResult;->mFreezesAnimation:Z

    .line 120
    return-void
.end method
