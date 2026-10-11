.class final Lcom/cmplay/base/util/gif/GifRenderingExecutor$InstanceHolder;
.super Ljava/lang/Object;
.source "GifRenderingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/base/util/gif/GifRenderingExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/cmplay/base/util/gif/GifRenderingExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/cmplay/base/util/gif/GifRenderingExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cmplay/base/util/gif/GifRenderingExecutor;-><init>(Lcom/cmplay/base/util/gif/GifRenderingExecutor$1;)V

    sput-object v0, Lcom/cmplay/base/util/gif/GifRenderingExecutor$InstanceHolder;->INSTANCE:Lcom/cmplay/base/util/gif/GifRenderingExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/cmplay/base/util/gif/GifRenderingExecutor;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/cmplay/base/util/gif/GifRenderingExecutor$InstanceHolder;->INSTANCE:Lcom/cmplay/base/util/gif/GifRenderingExecutor;

    return-object v0
.end method
