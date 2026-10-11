.class final Lcom/cmcm/orion/utils/internal/d$1;
.super Ljava/lang/Object;
.source "ParseUrlUtils.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmcm/orion/utils/internal/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmcm/orion/utils/internal/d;


# direct methods
.method constructor <init>(Lcom/cmcm/orion/utils/internal/d;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/d$1;->a:Lcom/cmcm/orion/utils/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/cmcm/orion/utils/internal/d$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmcm/orion/utils/internal/d$1$1;-><init>(Lcom/cmcm/orion/utils/internal/d$1;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method


# virtual methods
.method public final a(ILcom/cmcm/orion/adsdk/d;)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/utils/internal/d$1;->a(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public final a(ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_0

    .line 42
    invoke-static {p2, p3}, Lcom/cmcm/orion/utils/d;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/cmcm/orion/utils/internal/d$1;->a(ILjava/lang/String;)V

    .line 45
    return-void
.end method
