.class public Lcom/cmcm/orion/picks/b/b;
.super Ljava/lang/Object;
.source "IncentiveVideoAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/b/b$b;,
        Lcom/cmcm/orion/picks/b/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/cmcm/orion/picks/b/a;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lcom/cmcm/orion/picks/b/b$a;

.field private g:Lcom/cmcm/orion/picks/b/b$b;

.field private h:Lcom/cmcm/orion/picks/b/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/cmcm/orion/picks/b/b$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/b/b$1;-><init>(Lcom/cmcm/orion/picks/b/b;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/b;->h:Lcom/cmcm/orion/picks/b/a$b;

    .line 25
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context or posId can not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/b;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/cmcm/orion/picks/b/b;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/b;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/b;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/b;II)V
    .locals 1

    .prologue
    .line 15
    .line 1145
    new-instance v0, Lcom/cmcm/orion/picks/b/b$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmcm/orion/picks/b/b$2;-><init>(Lcom/cmcm/orion/picks/b/b;II)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 15
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/b;)Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/b/b;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->f:Lcom/cmcm/orion/picks/b/b$a;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/b/b;)Lcom/cmcm/orion/picks/b/b$b;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->g:Lcom/cmcm/orion/picks/b/b$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/b/b;->d:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/b/b;->d:Z

    .line 62
    new-instance v0, Lcom/cmcm/orion/picks/b/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmcm/orion/picks/b/b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/cmcm/orion/picks/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/orion/picks/b/a$a;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    .line 64
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(I)V

    .line 65
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0, v4}, Lcom/cmcm/orion/picks/b/a;->b(Z)V

    .line 66
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0, v4}, Lcom/cmcm/orion/picks/b/a;->c(Z)V

    .line 67
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0, v4}, Lcom/cmcm/orion/picks/b/a;->a(Z)V

    .line 68
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0, v4}, Lcom/cmcm/orion/picks/b/a;->d(Z)V

    .line 70
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/b;->h:Lcom/cmcm/orion/picks/b/a$b;

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/b/a$b;)V

    goto :goto_0
.end method

.method public a(Lcom/cmcm/orion/picks/b/b$a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/b;->f:Lcom/cmcm/orion/picks/b/b$a;

    .line 51
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->a(Lcom/cmcm/orion/picks/b/b$a;)V

    .line 52
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/b/b;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/b/b;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/b;->c:Lcom/cmcm/orion/picks/b/a;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/IncentiveVideoPlayActivity;->a(Landroid/content/Context;Lcom/cmcm/orion/picks/b/a;)Z

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/b;->e:Landroid/view/View;

    return-object v0
.end method
