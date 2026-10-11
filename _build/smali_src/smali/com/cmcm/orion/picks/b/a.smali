.class public Lcom/cmcm/orion/picks/b/a;
.super Ljava/lang/Object;
.source "BrandVideoCardAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/b/a$9;,
        Lcom/cmcm/orion/picks/b/a$d;,
        Lcom/cmcm/orion/picks/b/a$c;,
        Lcom/cmcm/orion/picks/b/a$b;,
        Lcom/cmcm/orion/picks/b/a$a;,
        Lcom/cmcm/orion/picks/b/a$f;,
        Lcom/cmcm/orion/picks/b/a$e;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/cmcm/orion/picks/b/a$a;

.field private e:Lcom/cmcm/orion/picks/b/a$b;

.field private f:Lcom/cmcm/orion/picks/b/a$c;

.field private g:Lcom/cmcm/orion/picks/a/a/a;

.field private h:I

.field private i:I

.field private j:Lcom/cmcm/orion/picks/impl/b;

.field private k:Lcom/cmcm/orion/picks/impl/h;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Lcom/cmcm/orion/picks/impl/f;

.field private w:I

.field private x:F

.field private y:Lcom/cmcm/orion/picks/b/a$e;

.field private z:Lcom/cmcm/orion/picks/b/a$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/cmcm/orion/picks/b/a$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/cmcm/orion/picks/b/a;->h:I

    .line 64
    iput v2, p0, Lcom/cmcm/orion/picks/b/a;->i:I

    .line 68
    const/4 v0, 0x5

    iput v0, p0, Lcom/cmcm/orion/picks/b/a;->l:I

    .line 70
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/b/a;->m:Z

    .line 71
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/b/a;->n:Z

    .line 72
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/b/a;->o:Z

    .line 73
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/b/a;->p:Z

    .line 74
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/b/a;->q:Z

    .line 76
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/b/a;->r:Z

    .line 77
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/b/a;->s:Z

    .line 81
    iput v1, p0, Lcom/cmcm/orion/picks/b/a;->u:I

    .line 82
    new-instance v0, Lcom/cmcm/orion/picks/impl/f;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/impl/f;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/a;->v:Lcom/cmcm/orion/picks/impl/f;

    .line 83
    const/16 v0, 0x14

    iput v0, p0, Lcom/cmcm/orion/picks/b/a;->w:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmcm/orion/picks/b/a;->x:F

    .line 90
    sget-object v0, Lcom/cmcm/orion/picks/b/a$e;->a:Lcom/cmcm/orion/picks/b/a$e;

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/a;->y:Lcom/cmcm/orion/picks/b/a$e;

    .line 106
    sget-object v0, Lcom/cmcm/orion/picks/b/a$f;->a:Lcom/cmcm/orion/picks/b/a$f;

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/a;->z:Lcom/cmcm/orion/picks/b/a$f;

    .line 109
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a;->b:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/cmcm/orion/picks/b/a;->c:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/cmcm/orion/picks/b/a;->d:Lcom/cmcm/orion/picks/b/a$a;

    .line 113
    invoke-static {p2}, Lcom/cmcm/orion/picks/a/a/h;->d(Ljava/lang/String;)V

    .line 115
    sget-boolean v0, Lcom/cmcm/orion/picks/impl/a/a;->a:Z

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/cmcm/orion/picks/b/a$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/b/a$1;-><init>(Lcom/cmcm/orion/picks/b/a;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->b(Ljava/lang/Runnable;)V

    .line 123
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/a/a/a;)Lcom/cmcm/orion/picks/a/a/a;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a;->g:Lcom/cmcm/orion/picks/a/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/b/a$f;)Lcom/cmcm/orion/picks/b/a$f;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a;->z:Lcom/cmcm/orion/picks/b/a$f;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/impl/b;)Lcom/cmcm/orion/picks/impl/b;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/impl/h;)Lcom/cmcm/orion/picks/impl/h;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a;->k:Lcom/cmcm/orion/picks/impl/h;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    .line 1407
    sget-object v0, Lcom/cmcm/orion/picks/b/a$e;->b:Lcom/cmcm/orion/picks/b/a$e;

    .line 1408
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1409
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1410
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 1443
    if-nez v0, :cond_1

    move v1, v2

    .line 1411
    :goto_1
    if-nez v1, :cond_0

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "filterAdList: filter invalid ad, title = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/a/a/a;)V

    .line 1414
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1448
    :cond_1
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->t()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "checkAdIsValid: invalid app show type = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->t()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    .line 1459
    goto :goto_1

    .line 1482
    :pswitch_0
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->E()Ljava/lang/String;

    move-result-object v1

    .line 1483
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/cmcm/orion/picks/b/a;->s:Z

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1450
    goto :goto_1

    .line 2477
    :pswitch_1
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->E()Ljava/lang/String;

    move-result-object v1

    .line 2478
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/cmcm/orion/picks/b/a;->r:Z

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1454
    goto :goto_1

    .line 48
    :cond_4
    return-object p1

    .line 1448
    :pswitch_data_0
    .packed-switch 0xc35c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lcom/cmcm/orion/picks/b/a$3;

    invoke-direct {v0, p0, p1}, Lcom/cmcm/orion/picks/b/a$3;-><init>(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/a/a/a;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/a;->a(Ljava/lang/Runnable;)V

    .line 440
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/b/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a;Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 48
    .line 3696
    sget-object v0, Lcom/cmcm/orion/picks/b/a$f;->f:Lcom/cmcm/orion/picks/b/a$f;

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/a;->z:Lcom/cmcm/orion/picks/b/a$f;

    .line 3697
    sget-object v0, Lcom/cmcm/orion/adsdk/b$a;->D:Lcom/cmcm/orion/adsdk/b$a;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/orion/picks/b/a;->A:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 3698
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->e:Lcom/cmcm/orion/picks/b/a$b;

    if-eqz v0, :cond_0

    .line 3699
    new-instance v0, Lcom/cmcm/orion/picks/b/a$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmcm/orion/picks/b/a$6;-><init>(Lcom/cmcm/orion/picks/b/a;Landroid/view/View;I)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/b/a;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 48
    .line 3504
    sget-object v0, Lcom/cmcm/orion/picks/b/a$f;->d:Lcom/cmcm/orion/picks/b/a$f;

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/a;->z:Lcom/cmcm/orion/picks/b/a$f;

    .line 3506
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3507
    :cond_0
    const/16 v0, 0x7d

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/b/a;->b(I)V

    .line 3508
    :goto_0
    return-void

    .line 3511
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 3512
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->b:Landroid/content/Context;

    new-instance v2, Lcom/cmcm/orion/picks/b/a$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/cmcm/orion/picks/b/a$4;-><init>(Lcom/cmcm/orion/picks/b/a;Ljava/util/List;Lcom/cmcm/orion/picks/a/a/a;)V

    invoke-static {p0, v1, v0, v2}, Lcom/cmcm/orion/picks/impl/a;->a(Lcom/cmcm/orion/picks/b/a;Landroid/content/Context;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/picks/impl/a$a;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 617
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 642
    :goto_0
    return v0

    .line 621
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 622
    const-string v3, "app"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 625
    goto :goto_0

    .line 628
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_2

    move v0, v1

    .line 630
    goto :goto_0

    :cond_2
    move v3, v2

    .line 633
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 634
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 635
    goto :goto_0

    .line 633
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 639
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    .line 640
    goto :goto_0

    :cond_4
    move v0, v1

    .line 642
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 595
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/cmcm/orion/picks/b/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 600
    const-string v3, "app"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v2, v1

    .line 603
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "check app pkgName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",app str:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 610
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 613
    goto :goto_0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/b/a;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/cmcm/orion/picks/b/a;->C:J

    return-wide v0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/b/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 48
    .line 3421
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3422
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3423
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/a/a/a;

    .line 3424
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app locker get ad:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3425
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->D()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cmcm/orion/picks/b/a;->t:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/cmcm/orion/picks/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3426
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 48
    :cond_1
    return-object p1
.end method

.method private b(I)V
    .locals 6

    .prologue
    .line 726
    const/4 v0, 0x0

    .line 727
    sget-object v1, Lcom/cmcm/orion/picks/b/a$9;->a:[I

    iget-object v2, p0, Lcom/cmcm/orion/picks/b/a;->y:Lcom/cmcm/orion/picks/b/a$e;

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/b/a$e;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 741
    :goto_0
    if-eqz v0, :cond_0

    .line 743
    new-instance v1, Lcom/cmcm/orion/picks/b/a$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/cmcm/orion/picks/b/a$8;-><init>(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/b/a$d;I)V

    invoke-static {v1}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    .line 752
    :cond_0
    return-void

    .line 729
    :pswitch_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->e:Lcom/cmcm/orion/picks/b/a$b;

    .line 730
    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->E:Lcom/cmcm/orion/adsdk/b$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/orion/picks/b/a;->A:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    goto :goto_0

    .line 735
    :pswitch_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->f:Lcom/cmcm/orion/picks/b/a$c;

    .line 736
    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->H:Lcom/cmcm/orion/adsdk/b$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/orion/picks/b/a;->B:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/b/a;Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/picks/a/a/a;)V

    return-void
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/b/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/cmcm/orion/picks/b/a;)I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcom/cmcm/orion/picks/b/a;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmcm/orion/picks/b/a;->h:I

    return v0
.end method

.method static synthetic e(Lcom/cmcm/orion/picks/b/a;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/cmcm/orion/picks/b/a;->h:I

    return v0
.end method

.method static synthetic f(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$e;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->y:Lcom/cmcm/orion/picks/b/a$e;

    return-object v0
.end method

.method static synthetic g(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;
    .locals 1

    .prologue
    .line 48
    .line 3646
    new-instance v0, Lcom/cmcm/orion/picks/b/a$5;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/b/a$5;-><init>(Lcom/cmcm/orion/picks/b/a;)V

    .line 48
    return-object v0
.end method

.method static synthetic h(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/impl/f;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->v:Lcom/cmcm/orion/picks/impl/f;

    return-object v0
.end method

.method static synthetic i(Lcom/cmcm/orion/picks/b/a;)V
    .locals 6

    .prologue
    .line 48
    .line 3711
    sget-object v0, Lcom/cmcm/orion/picks/b/a$f;->f:Lcom/cmcm/orion/picks/b/a$f;

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/a;->z:Lcom/cmcm/orion/picks/b/a$f;

    .line 3712
    sget-object v0, Lcom/cmcm/orion/adsdk/b$a;->G:Lcom/cmcm/orion/adsdk/b$a;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/orion/picks/b/a;->B:J

    sub-long/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 3713
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->f:Lcom/cmcm/orion/picks/b/a$c;

    if-eqz v0, :cond_0

    .line 3714
    new-instance v0, Lcom/cmcm/orion/picks/b/a$7;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/b/a$7;-><init>(Lcom/cmcm/orion/picks/b/a;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->a(Ljava/lang/Runnable;)V

    .line 48
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/cmcm/orion/picks/b/a;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/cmcm/orion/picks/b/a;->i:I

    return v0
.end method

.method static synthetic k(Lcom/cmcm/orion/picks/b/a;)Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/b/a;->p:Z

    return v0
.end method

.method static synthetic l(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->d:Lcom/cmcm/orion/picks/b/a$a;

    return-object v0
.end method

.method static synthetic m(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->e:Lcom/cmcm/orion/picks/b/a$b;

    return-object v0
.end method

.method static synthetic n(Lcom/cmcm/orion/picks/b/a;)Lcom/cmcm/orion/picks/b/a$c;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->f:Lcom/cmcm/orion/picks/b/a$c;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/cmcm/orion/picks/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 336
    :cond_0
    const/16 v0, 0x8a

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/b/a;->b(I)V

    .line 337
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/orion/utils/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/b/a;->b(I)V

    .line 404
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->z:Lcom/cmcm/orion/picks/b/a$f;

    sget-object v1, Lcom/cmcm/orion/picks/b/a$f;->a:Lcom/cmcm/orion/picks/b/a$f;

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/b/a$f;->a(Lcom/cmcm/orion/picks/b/a$f;Lcom/cmcm/orion/picks/b/a$f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/b/a;->b(I)V

    goto :goto_0

    .line 358
    :cond_1
    sget-object v0, Lcom/cmcm/orion/picks/b/a$f;->b:Lcom/cmcm/orion/picks/b/a$f;

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/a;->z:Lcom/cmcm/orion/picks/b/a$f;

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/orion/picks/b/a;->C:J

    .line 361
    sget-object v0, Lcom/cmcm/orion/adsdk/b$a;->al:Lcom/cmcm/orion/adsdk/b$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 362
    new-instance v0, Lcom/cmcm/orion/picks/a/a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/cmcm/orion/picks/a/a;-><init>(Ljava/lang/String;)V

    .line 363
    iget v1, p0, Lcom/cmcm/orion/picks/b/a;->u:I

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a;->b(I)V

    .line 364
    iget v1, p0, Lcom/cmcm/orion/picks/b/a;->w:I

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a;->a(I)V

    .line 365
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->y:Lcom/cmcm/orion/picks/b/a$e;

    sget-object v2, Lcom/cmcm/orion/picks/b/a$e;->b:Lcom/cmcm/orion/picks/b/a$e;

    if-ne v1, v2, :cond_2

    .line 366
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a;->a()V

    .line 368
    :cond_2
    new-instance v1, Lcom/cmcm/orion/picks/b/a$2;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/b/a$2;-><init>(Lcom/cmcm/orion/picks/b/a;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/a/a;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 403
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/b;->b_()V

    .line 195
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 306
    iput p1, p0, Lcom/cmcm/orion/picks/b/a;->x:F

    .line 307
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    iget v1, p0, Lcom/cmcm/orion/picks/b/a;->x:F

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/b;->a(F)V

    .line 310
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 465
    iput p1, p0, Lcom/cmcm/orion/picks/b/a;->u:I

    .line 466
    return-void
.end method

.method public a(Lcom/cmcm/orion/adsdk/b$a;IJ)V
    .locals 7

    .prologue
    .line 774
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 775
    const-string v0, "video_length"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v0, "video_url"

    const-string v1, ""

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->g:Lcom/cmcm/orion/picks/a/a/a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/b/a;->c:Ljava/lang/String;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/cmcm/orion/picks/impl/a$1;->a(Lcom/cmcm/orion/adsdk/b$a;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;IJLjava/util/Map;)V

    .line 778
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->c:Ljava/lang/String;

    const-string v2, "brand"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lcom/cmcm/orion/adsdk/e;->a(Lcom/cmcm/orion/adsdk/b$a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 780
    return-void
.end method

.method public a(Lcom/cmcm/orion/adsdk/b$a;IJJLjava/lang/String;)V
    .locals 7

    .prologue
    .line 783
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 784
    const-string v0, "video_length"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const-string v0, "video_url"

    invoke-interface {v6, v0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->g:Lcom/cmcm/orion/picks/a/a/a;

    iget-object v2, p0, Lcom/cmcm/orion/picks/b/a;->c:Ljava/lang/String;

    move-object v0, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/cmcm/orion/picks/impl/a$1;->a(Lcom/cmcm/orion/adsdk/b$a;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;IJLjava/util/Map;)V

    .line 787
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->c:Ljava/lang/String;

    const-string v2, "brand"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lcom/cmcm/orion/adsdk/e;->a(Lcom/cmcm/orion/adsdk/b$a;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 789
    return-void
.end method

.method public a(Lcom/cmcm/orion/picks/b/a$a;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->d:Lcom/cmcm/orion/picks/b/a$a;

    if-nez v0, :cond_0

    .line 232
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a;->d:Lcom/cmcm/orion/picks/b/a$a;

    .line 234
    :cond_0
    return-void
.end method

.method public a(Lcom/cmcm/orion/picks/b/a$b;)V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmcm/orion/utils/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/b/a;->b(I)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 134
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lcom/cmcm/orion/picks/b/a;->b(I)V

    goto :goto_0

    .line 139
    :cond_2
    sget-object v0, Lcom/cmcm/orion/picks/b/a$e;->a:Lcom/cmcm/orion/picks/b/a$e;

    iput-object v0, p0, Lcom/cmcm/orion/picks/b/a;->y:Lcom/cmcm/orion/picks/b/a$e;

    .line 140
    iput-object p1, p0, Lcom/cmcm/orion/picks/b/a;->e:Lcom/cmcm/orion/picks/b/a$b;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/orion/picks/b/a;->A:J

    .line 142
    sget-object v0, Lcom/cmcm/orion/adsdk/b$a;->C:Lcom/cmcm/orion/adsdk/b$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 144
    invoke-direct {p0}, Lcom/cmcm/orion/picks/b/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/cmcm/orion/picks/b/a;->q()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->v:Lcom/cmcm/orion/picks/impl/f;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/f;->g:Lcom/cmcm/orion/picks/impl/f$a;

    iput-boolean p1, v0, Lcom/cmcm/orion/picks/impl/f$a;->a:Z

    .line 247
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->v:Lcom/cmcm/orion/picks/impl/f;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/f;->h:Lcom/cmcm/orion/picks/impl/f$a;

    iput-boolean p1, v0, Lcom/cmcm/orion/picks/impl/f$a;->a:Z

    .line 267
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/b/a;->n:Z

    return v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->v:Lcom/cmcm/orion/picks/impl/f;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/f;->b:Lcom/cmcm/orion/picks/impl/f$a;

    iput-boolean p1, v0, Lcom/cmcm/orion/picks/impl/f$a;->a:Z

    .line 275
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->g:Lcom/cmcm/orion/picks/a/a/a;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->g:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/cmcm/orion/picks/b/a;->p:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/orion/picks/b/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/cmcm/orion/utils/c;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 214
    :cond_0
    return v0
.end method

.method public d()Lcom/cmcm/orion/picks/impl/h;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->k:Lcom/cmcm/orion/picks/impl/h;

    return-object v0
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->v:Lcom/cmcm/orion/picks/impl/f;

    iget-object v0, v0, Lcom/cmcm/orion/picks/impl/f;->d:Lcom/cmcm/orion/picks/impl/f$a;

    iput-boolean p1, v0, Lcom/cmcm/orion/picks/impl/f$a;->a:Z

    .line 283
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/cmcm/orion/picks/impl/g;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/b;->d()Lcom/cmcm/orion/picks/impl/g;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()F
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/cmcm/orion/picks/b/a;->x:F

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/b;->a()V

    .line 325
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/b;->a_()V

    .line 331
    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/b/a;->m:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/b/a;->q:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/b/a;->o:Z

    return v0
.end method

.method public n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 797
    iput-object v1, p0, Lcom/cmcm/orion/picks/b/a;->d:Lcom/cmcm/orion/picks/b/a$a;

    .line 798
    iput-object v1, p0, Lcom/cmcm/orion/picks/b/a;->e:Lcom/cmcm/orion/picks/b/a$b;

    .line 799
    iput-object v1, p0, Lcom/cmcm/orion/picks/b/a;->f:Lcom/cmcm/orion/picks/b/a$c;

    .line 800
    iget-object v0, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    if-eqz v0, :cond_0

    .line 802
    iput-object v1, p0, Lcom/cmcm/orion/picks/b/a;->j:Lcom/cmcm/orion/picks/impl/b;

    .line 804
    :cond_0
    return-void
.end method
