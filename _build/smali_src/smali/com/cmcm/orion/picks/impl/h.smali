.class public final Lcom/cmcm/orion/picks/impl/h;
.super Ljava/lang/Object;
.source "VastModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/impl/h$a;,
        Lcom/cmcm/orion/picks/impl/h$c;,
        Lcom/cmcm/orion/picks/impl/h$b;
    }
.end annotation


# static fields
.field private static final D:[Ljava/lang/String;


# instance fields
.field private A:I

.field private B:D

.field private C:Ljava/lang/String;

.field private E:D

.field private F:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/h$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/cmcm/orion/picks/impl/g$a;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/h$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/cmcm/orion/picks/impl/h$c;

.field private m:Z

.field private n:Lcom/cmcm/orion/picks/a/a/a;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/cmcm/orion/picks/impl/g$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 642
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "X907"

    aput-object v2, v0, v1

    sput-object v0, Lcom/cmcm/orion/picks/impl/h;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->o:Z

    .line 68
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->p:Z

    .line 69
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->q:Z

    .line 70
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->r:Z

    .line 71
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->s:Z

    .line 72
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->t:Z

    .line 83
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->x:Z

    .line 84
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->y:Z

    .line 88
    const/16 v0, 0x40

    iput v0, p0, Lcom/cmcm/orion/picks/impl/h;->A:I

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cmcm/orion/picks/impl/h;->B:D

    .line 97
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/h$c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/h$c;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cmcm/orion/picks/impl/h$c;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 713
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 723
    :goto_0
    return-object v0

    .line 716
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 717
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 718
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/h$c;

    .line 719
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/h$c;->a(Lcom/cmcm/orion/picks/impl/h$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 723
    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0}, Lcom/cmcm/orion/picks/impl/a$1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmcm/orion/picks/impl/i;->b(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()D
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/cmcm/orion/picks/impl/h;->B:D

    return-wide v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->l:Lcom/cmcm/orion/picks/impl/h$c;

    if-nez v0, :cond_0

    .line 554
    invoke-virtual {p0, p1}, Lcom/cmcm/orion/picks/impl/h;->b(Landroid/content/Context;)Lcom/cmcm/orion/picks/impl/h$c;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->l:Lcom/cmcm/orion/picks/impl/h$c;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->l:Lcom/cmcm/orion/picks/impl/h$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->l:Lcom/cmcm/orion/picks/impl/h$c;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$c;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 537
    iput p1, p0, Lcom/cmcm/orion/picks/impl/h;->v:I

    .line 538
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 432
    iput-wide p1, p0, Lcom/cmcm/orion/picks/impl/h;->e:J

    .line 433
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/a/a/a;)V
    .locals 1

    .prologue
    .line 493
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->n:Lcom/cmcm/orion/picks/a/a/a;

    .line 497
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cmcm/orion/picks/a/a/a;->f(Ljava/lang/String;)V

    .line 501
    :cond_0
    iget v0, p0, Lcom/cmcm/orion/picks/impl/h;->A:I

    invoke-virtual {p1, v0}, Lcom/cmcm/orion/picks/a/a/a;->d(I)V

    .line 503
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cmcm/orion/picks/a/a/a;->e(Ljava/lang/String;)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cmcm/orion/picks/a/a/a;->j(Ljava/lang/String;)V

    .line 510
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/orion/picks/impl/h;->B:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/h$c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 517
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->g:Ljava/util/List;

    .line 518
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 529
    iput-boolean p1, p0, Lcom/cmcm/orion/picks/impl/h;->m:Z

    .line 530
    return-void
.end method

.method public final b(Landroid/content/Context;)Lcom/cmcm/orion/picks/impl/h$c;
    .locals 14

    .prologue
    const/4 v0, 0x0

    .line 659
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->l:Lcom/cmcm/orion/picks/impl/h$c;

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->l:Lcom/cmcm/orion/picks/impl/h$c;

    .line 706
    :cond_0
    :goto_0
    return-object v1

    .line 1440
    :cond_1
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/h;->g:Ljava/util/List;

    .line 663
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 664
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 670
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 671
    const/16 v3, 0xa

    if-lt v1, v3, :cond_4

    .line 1647
    sget-object v1, Lcom/cmcm/orion/picks/impl/h;->D:[Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/cmcm/orion/picks/impl/h;->D:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_9

    .line 1648
    sget-object v3, Lcom/cmcm/orion/picks/impl/h;->D:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_9

    aget-object v5, v3, v1

    .line 1649
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 671
    :goto_2
    if-eqz v0, :cond_4

    .line 672
    const-string v0, "vp8"

    invoke-static {v2, v0}, Lcom/cmcm/orion/picks/impl/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/h$c;

    move-result-object v1

    .line 673
    if-nez v1, :cond_0

    .line 677
    :cond_4
    const-string v0, "mp4"

    invoke-static {v2, v0}, Lcom/cmcm/orion/picks/impl/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/cmcm/orion/picks/impl/h$c;

    move-result-object v1

    .line 678
    if-nez v1, :cond_0

    .line 1730
    if-eqz p1, :cond_6

    .line 1733
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1734
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 1735
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 1736
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1737
    const/4 v5, 0x0

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_5

    .line 1738
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1740
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1741
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1742
    int-to-double v6, v5

    int-to-double v8, v3

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/cmcm/orion/picks/impl/h;->E:D

    .line 1743
    int-to-float v4, v5

    div-float/2addr v4, v0

    int-to-float v3, v3

    div-float v0, v3, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/cmcm/orion/picks/impl/h;->F:I

    .line 683
    :cond_6
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 685
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 686
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/h$c;

    .line 688
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$c;->c()Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 690
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1648
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1655
    :cond_9
    const/4 v0, 0x1

    goto :goto_2

    .line 694
    :cond_a
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$c;->a()I

    move-result v2

    .line 695
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$c;->b()I

    move-result v3

    .line 697
    if-lez v2, :cond_7

    if-lez v3, :cond_7

    .line 1750
    int-to-double v8, v2

    int-to-double v10, v3

    div-double/2addr v8, v10

    .line 1751
    mul-int/2addr v2, v3

    .line 1752
    iget-wide v10, p0, Lcom/cmcm/orion/picks/impl/h;->E:D

    div-double/2addr v8, v10

    .line 1753
    int-to-double v2, v2

    iget v7, p0, Lcom/cmcm/orion/picks/impl/h;->F:I

    int-to-double v10, v7

    div-double/2addr v2, v10

    .line 1754
    const-wide v10, 0x4051800000000000L    # 70.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    .line 701
    cmpg-double v7, v2, v4

    if-gez v7, :cond_b

    move-wide v12, v2

    move-object v2, v0

    move-wide v0, v12

    :goto_4
    move-wide v4, v0

    move-object v1, v2

    .line 705
    goto :goto_3

    :cond_b
    move-object v2, v1

    move-wide v0, v4

    goto :goto_4
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->C:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->C:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/h$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->h:Ljava/util/List;

    .line 522
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/cmcm/orion/picks/impl/h;->p:Z

    .line 574
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/cmcm/orion/picks/impl/h;->A:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 137
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/cmcm/orion/picks/impl/h;->A:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/cmcm/orion/picks/impl/h;->q:Z

    .line 582
    return-void
.end method

.method public final d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/cmcm/orion/picks/impl/g$a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->w:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->w:Ljava/util/Map;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->w:Ljava/util/Map;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->z:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/cmcm/orion/picks/impl/h;->r:Z

    .line 590
    return-void
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/cmcm/orion/picks/impl/g$a;",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/h$b;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->i:Ljava/util/Map;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->a:Ljava/lang/String;

    .line 470
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/cmcm/orion/picks/impl/h;->s:Z

    .line 598
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->b:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/cmcm/orion/picks/impl/h;->t:Z

    .line 602
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->c:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public final g(Z)V
    .locals 0

    .prologue
    .line 623
    iput-boolean p1, p0, Lcom/cmcm/orion/picks/impl/h;->x:Z

    .line 624
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->d:Ljava/lang/String;

    .line 490
    :goto_0
    return-void

    .line 485
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cmcm/orion/adsdk/R$string;->brand_learn_more_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->o:Z

    .line 422
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->n:Lcom/cmcm/orion/picks/a/a/a;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->n:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->n:Lcom/cmcm/orion/picks/a/a/a;

    .line 1109
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cmcm/orion/picks/a/b;->a(Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Lcom/cmcm/orion/adsdk/a;)V

    .line 425
    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->f:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 428
    iget-wide v0, p0, Lcom/cmcm/orion/picks/impl/h;->e:J

    return-wide v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->j:Ljava/lang/String;

    .line 526
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->u:Ljava/lang/String;

    .line 534
    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/h$c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->g:Ljava/util/List;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/h;->k:Ljava/lang/String;

    .line 550
    return-void
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cmcm/orion/picks/impl/h$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->h:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->m:Z

    return v0
.end method

.method public final p()Lcom/cmcm/orion/picks/a/a/a;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->n:Lcom/cmcm/orion/picks/a/a/a;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/cmcm/orion/picks/impl/h;->v:I

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->p:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->q:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VastModel{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", button=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickThrough=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", companionAds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vastTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->l:Lcom/cmcm/orion/picks/impl/h$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/h;->l:Lcom/cmcm/orion/picks/impl/h$c;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$c;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWapperType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cmcm/orion/picks/impl/h;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->n:Lcom/cmcm/orion/picks/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vastAdTagUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wapperFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cmcm/orion/picks/impl/h;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reportEventUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/h;->w:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->r:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->s:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/h;->t:Z

    return v0
.end method
