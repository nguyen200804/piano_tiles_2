.class public final Lcom/cmcm/orion/picks/a/a/f;
.super Ljava/lang/Object;
.source "BusinessPublicData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->f:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/cmcm/orion/picks/a/a/f;->g:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->h:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->i:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->j:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->k:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/cmcm/orion/picks/a/a/f;->m:I

    .line 55
    iput v1, p0, Lcom/cmcm/orion/picks/a/a/f;->p:I

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)Lcom/cmcm/orion/picks/a/a/f;
    .locals 6

    .prologue
    .line 61
    new-instance v0, Lcom/cmcm/orion/picks/a/a/f;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/a/a/f;-><init>()V

    .line 62
    iput-object p0, v0, Lcom/cmcm/orion/picks/a/a/f;->a:Ljava/lang/String;

    .line 63
    iput-object p1, v0, Lcom/cmcm/orion/picks/a/a/f;->o:Ljava/lang/String;

    .line 64
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/utils/b;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/cmcm/orion/picks/a/a/f;->b:I

    .line 65
    iput p2, v0, Lcom/cmcm/orion/picks/a/a/f;->c:I

    .line 66
    invoke-static {}, Lcom/cmcm/orion/utils/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmcm/orion/picks/a/a/f;->d:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string v3, "%s_%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmcm/orion/picks/a/a/f;->e:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/utils/b;->e(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/cmcm/orion/picks/a/a/f;->g:I

    .line 73
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/utils/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmcm/orion/picks/a/a/f;->i:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/cmcm/orion/utils/internal/a/a;->c()Lcom/cmcm/orion/utils/internal/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/utils/internal/a/a;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmcm/orion/picks/a/a/f;->j:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmcm/orion/picks/a/a/f;->k:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cmcm/orion/picks/a/a/f;->l:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/utils/c;->b(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/cmcm/orion/picks/a/a/f;->p:I

    .line 78
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/cmcm/orion/picks/a/a/f;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/f;->h:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ac="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/cmcm/orion/picks/a/a/f;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&pos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&mid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cmcm/orion/picks/a/a/f;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&aid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/f;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&lan="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/f;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&ext="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&cmver="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cmcm/orion/picks/a/a/f;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "&mcc="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "&mnc="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&gaid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/f;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&pl=2&v=25"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&channelid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/f;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&lp="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cmcm/orion/picks/a/a/f;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&lv=4.3.4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&at="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&tabid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cmcm/orion/picks/a/a/f;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&nt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cmcm/orion/picks/a/a/f;->p:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&rf="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->n:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cmcm/orion/picks/a/a/f;->n:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->i:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/f;->k:Ljava/lang/String;

    goto/16 :goto_1

    .line 123
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/f;->m:I

    .line 83
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/f;->n:Ljava/util/Map;

    .line 87
    return-void
.end method
