.class public final Lcom/cmcm/orion/utils/internal/d;
.super Ljava/lang/Object;
.source "ParseUrlUtils.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/cmcm/orion/picks/impl/a$a;

.field private c:Lcom/cmcm/orion/utils/d$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/d;->b:Lcom/cmcm/orion/picks/impl/a$a;

    .line 26
    iput-object p1, p0, Lcom/cmcm/orion/utils/internal/d;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/cmcm/orion/utils/internal/d;->b:Lcom/cmcm/orion/picks/impl/a$a;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/d;)Lcom/cmcm/orion/utils/d$b;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/d;->c:Lcom/cmcm/orion/utils/d$b;

    return-object v0
.end method

.method private a(Lcom/cmcm/orion/picks/webview/e;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/d;->b:Lcom/cmcm/orion/picks/impl/a$a;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/d;->b:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-interface {v0, p1}, Lcom/cmcm/orion/picks/impl/a$a;->a(Lcom/cmcm/orion/picks/webview/e;)V

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/utils/internal/d;Lcom/cmcm/orion/picks/webview/e;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/cmcm/orion/utils/internal/d;->a(Lcom/cmcm/orion/picks/webview/e;)V

    return-void
.end method

.method static synthetic b(Lcom/cmcm/orion/utils/internal/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/d;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/cmcm/orion/picks/webview/e;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/cmcm/orion/utils/internal/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/cmcm/orion/picks/webview/e;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cmcm/orion/utils/internal/d;->a(Lcom/cmcm/orion/picks/webview/e;)V

    .line 93
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/utils/internal/d;->a:Ljava/lang/String;

    new-instance v1, Lcom/cmcm/orion/utils/internal/d$1;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/utils/internal/d$1;-><init>(Lcom/cmcm/orion/utils/internal/d;)V

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/d;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)Lcom/cmcm/orion/utils/d$b;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/utils/internal/d;->c:Lcom/cmcm/orion/utils/d$b;

    goto :goto_0
.end method
