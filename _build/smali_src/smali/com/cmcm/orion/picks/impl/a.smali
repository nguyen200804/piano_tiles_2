.class public Lcom/cmcm/orion/picks/impl/a;
.super Ljava/lang/Object;
.source "BrandVCAdMaterialLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/impl/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/cmcm/orion/picks/impl/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/impl/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 29
    sput-wide p0, Lcom/cmcm/orion/picks/impl/a;->b:J

    return-wide p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/cmcm/orion/picks/impl/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/cmcm/orion/picks/impl/h;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 4

    .prologue
    .line 29
    .line 3122
    if-nez p1, :cond_0

    .line 3123
    invoke-static {p2}, Lcom/cmcm/orion/picks/impl/a;->b(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 3124
    :goto_0
    return-void

    .line 3127
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3128
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/impl/h;->m()Ljava/util/List;

    move-result-object v0

    .line 3129
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 3130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/h$a;

    .line 3131
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->c()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ltz v3, :cond_1

    .line 3135
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3139
    :cond_2
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/impl/h;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3140
    invoke-static {p0, v1, p2}, Lcom/cmcm/orion/picks/impl/a;->b(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/cmcm/orion/picks/impl/a;->b(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cmcm/orion/picks/impl/a$a;)V

    return-void
.end method

.method public static a(Lcom/cmcm/orion/picks/b/a;Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 8

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadMaterialInternal: ad title = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 39
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->t()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadMaterialInternal: invalid app show type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    sget-object v0, Lcom/cmcm/orion/adsdk/d;->t:Lcom/cmcm/orion/adsdk/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid app show type ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->t()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/adsdk/d;->a(Ljava/lang/String;)Lcom/cmcm/orion/adsdk/d;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/cmcm/orion/picks/impl/a;->b(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V

    .line 54
    :goto_0
    return-void

    .line 1061
    :pswitch_0
    :try_start_0
    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1063
    new-instance v0, Lcom/cmcm/orion/picks/impl/a$1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/cmcm/orion/picks/impl/a$1;-><init>(Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/picks/b/a;Ljava/util/HashMap;)V

    .line 1188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/cmcm/orion/picks/impl/a;->c:J

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1190
    new-instance v1, Lcom/cmcm/orion/picks/impl/a$3;

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/cmcm/orion/picks/impl/a$3;-><init>(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/picks/impl/a$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v1}, Lcom/cmcm/orion/picks/impl/a/a;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/impl/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    sget-object v1, Lcom/cmcm/orion/adsdk/d;->s:Lcom/cmcm/orion/adsdk/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/adsdk/d;->a(Ljava/lang/String;)Lcom/cmcm/orion/adsdk/d;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/cmcm/orion/picks/impl/a;->b(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0xc35c
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0}, Lcom/cmcm/orion/picks/impl/a;->b(Lcom/cmcm/orion/picks/impl/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/cmcm/orion/picks/impl/a;->b(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/a$a;Ljava/util/HashMap;Lcom/cmcm/orion/picks/impl/h;)V
    .locals 1

    .prologue
    .line 29
    .line 2286
    new-instance v0, Lcom/cmcm/orion/picks/impl/a$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmcm/orion/picks/impl/a$4;-><init>(Lcom/cmcm/orion/picks/impl/a$a;Ljava/util/HashMap;Lcom/cmcm/orion/picks/impl/h;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/cmcm/orion/picks/b/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 29
    .line 2178
    invoke-virtual {p1}, Lcom/cmcm/orion/picks/b/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2179
    invoke-static {p0}, Lcom/cmcm/orion/utils/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 29
    .line 1273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    const-string v0, ""

    .line 1267
    :goto_0
    const-string v1, "mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3gp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "webm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1277
    :cond_1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1278
    const-string v0, ""

    .line 1279
    array-length v2, v1

    if-lez v2, :cond_2

    .line 1280
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    .line 1282
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1267
    :cond_3
    const/4 v0, 0x0

    .line 29
    goto :goto_1
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 29
    sget-wide v0, Lcom/cmcm/orion/picks/impl/a;->b:J

    return-wide v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/ArrayList;Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmcm/orion/picks/impl/a$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    invoke-static {p2}, Lcom/cmcm/orion/picks/impl/a;->b(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 175
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    new-instance v1, Lcom/cmcm/orion/picks/impl/a$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/cmcm/orion/picks/impl/a$2;-><init>(Ljava/util/ArrayList;Lcom/cmcm/orion/picks/impl/a$a;Landroid/content/Context;)V

    invoke-static {p0, v0, v2, v1}, Lcom/cmcm/orion/picks/impl/b/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0
.end method

.method private static b(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 144
    if-eqz p0, :cond_0

    .line 145
    invoke-interface {p0}, Lcom/cmcm/orion/picks/impl/a$a;->b()V

    .line 147
    :cond_0
    return-void
.end method

.method private static b(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V
    .locals 1
    .param p0    # Lcom/cmcm/orion/picks/impl/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 294
    new-instance v0, Lcom/cmcm/orion/picks/impl/a$5;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/orion/picks/impl/a$5;-><init>(Lcom/cmcm/orion/picks/impl/a$a;Lcom/cmcm/orion/adsdk/d;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 29
    sget-wide v0, Lcom/cmcm/orion/picks/impl/a;->c:J

    return-wide v0
.end method
