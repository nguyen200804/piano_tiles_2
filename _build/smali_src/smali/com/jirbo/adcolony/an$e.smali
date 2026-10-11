.class Lcom/jirbo/adcolony/an$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/jirbo/adcolony/a$g;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Z

.field h:Z

.field i:Z

.field j:Lcom/jirbo/adcolony/a$c;

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l:Lcom/jirbo/adcolony/an$f;

.field m:Lcom/jirbo/adcolony/an$k;

.field n:Lcom/jirbo/adcolony/an$g;

.field o:J

.field p:J

.field q:J

.field r:Lcom/jirbo/adcolony/z;

.field s:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    new-instance v0, Lcom/jirbo/adcolony/a$c;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$c;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$e;->j:Lcom/jirbo/adcolony/a$c;

    .line 499
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/jirbo/adcolony/an$e;->o:J

    .line 500
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/jirbo/adcolony/an$e;->p:J

    .line 505
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/an$e;->s:I

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/jirbo/adcolony/an$a;)I
    .locals 1

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lcom/jirbo/adcolony/an$a;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 643
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 511
    .line 512
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    if-nez v0, :cond_1

    move v2, v3

    .line 520
    :cond_0
    :goto_0
    return v2

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an$a;

    .line 515
    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 516
    goto :goto_1

    .line 519
    :cond_2
    iget v0, p0, Lcom/jirbo/adcolony/an$e;->f:I

    if-ge v1, v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 752
    if-nez p1, :cond_0

    move v0, v2

    .line 801
    :goto_0
    return v0

    .line 754
    :cond_0
    iput-object p1, p0, Lcom/jirbo/adcolony/an$e;->b:Lcom/jirbo/adcolony/a$g;

    .line 756
    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    .line 760
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an$e;->g:Z

    .line 761
    const-string v0, "active"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an$e;->h:Z

    .line 764
    const-string v0, "last_config_ms"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/jirbo/adcolony/an$e;->q:J

    .line 766
    const-string v0, "clear_ad_queue"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->g(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/an$e;->i:Z

    .line 769
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$e;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$e;->h:Z

    if-nez v0, :cond_3

    :cond_1
    move v0, v3

    goto :goto_0

    .line 764
    :cond_2
    const-string v0, "last_config_ms"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    .line 771
    :cond_3
    const-string v0, "play_interval"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/an$e;->c:I

    .line 772
    const-string v0, "daily_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/an$e;->d:I

    .line 773
    const-string v0, "session_play_cap"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/an$e;->e:I

    .line 774
    const-string v0, "min_ad_thresh"

    invoke-virtual {p1, v0, v3}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jirbo/adcolony/an$e;->f:I

    .line 775
    const-string v0, "min_config_win"

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/jirbo/adcolony/an$e;->p:J

    .line 776
    const-string v0, "max_config_win"

    const/16 v1, 0x258

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/jirbo/adcolony/an$e;->o:J

    .line 779
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    .line 780
    const-string v0, "play_order"

    invoke-virtual {p1, v0}, Lcom/jirbo/adcolony/a$g;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    move v0, v2

    goto/16 :goto_0

    .line 783
    :cond_4
    new-instance v0, Lcom/jirbo/adcolony/an$f;

    invoke-direct {v0}, Lcom/jirbo/adcolony/an$f;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$e;->l:Lcom/jirbo/adcolony/an$f;

    .line 784
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->l:Lcom/jirbo/adcolony/an$f;

    const-string v1, "tracking"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/an$f;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto/16 :goto_0

    .line 788
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$e;->i:Z

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Lcom/jirbo/adcolony/an$k;

    invoke-direct {v0}, Lcom/jirbo/adcolony/an$k;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    .line 789
    :cond_7
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    const-string v1, "ads"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;)Lcom/jirbo/adcolony/a$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/an$k;->a(Lcom/jirbo/adcolony/a$c;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto/16 :goto_0

    .line 792
    :cond_8
    sget-boolean v0, Lcom/jirbo/adcolony/t;->r:Z

    if-nez v0, :cond_9

    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "Finished parsing response for zone \""

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v1, "\": "

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v0

    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->a(I)Lcom/jirbo/adcolony/al;

    move-result-object v0

    const-string v1, " ad(s). Attempting to cache media assets."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 794
    :cond_9
    new-instance v0, Lcom/jirbo/adcolony/an$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/an$g;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$e;->n:Lcom/jirbo/adcolony/an$g;

    .line 795
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->n:Lcom/jirbo/adcolony/an$g;

    const-string v1, "v4vc"

    invoke-virtual {p1, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/a$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/an$g;->a(Lcom/jirbo/adcolony/a$g;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    goto/16 :goto_0

    .line 797
    :cond_a
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->g:Lcom/jirbo/adcolony/aa;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/aa;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/z;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    .line 799
    sget-object v0, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v1, "Finished parsing zone"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    move v0, v3

    .line 801
    goto/16 :goto_0
.end method

.method a(Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 578
    if-nez p1, :cond_0

    invoke-static {}, Lcom/jirbo/adcolony/t;->f()V

    .line 580
    :cond_0
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->g:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->h:Z

    if-nez v1, :cond_2

    .line 600
    :cond_1
    :goto_0
    return v0

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->b()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 585
    const/4 v2, 0x0

    move v3, v0

    .line 586
    :goto_1
    if-ge v3, v4, :cond_4

    .line 588
    invoke-virtual {p0}, Lcom/jirbo/adcolony/an$e;->i()Lcom/jirbo/adcolony/an$a;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_1

    .line 590
    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$a;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 598
    :goto_2
    if-eqz v1, :cond_1

    .line 600
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/an$e;->a(Lcom/jirbo/adcolony/an$a;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 595
    :cond_3
    invoke-virtual {p0}, Lcom/jirbo/adcolony/an$e;->k()V

    .line 586
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method a(ZZ)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 539
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/an$e;->a(Z)Z

    move-result v0

    .line 573
    :cond_0
    :goto_0
    return v0

    .line 541
    :cond_1
    iget-boolean v2, p0, Lcom/jirbo/adcolony/an$e;->g:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/jirbo/adcolony/an$e;->h:Z

    if-nez v2, :cond_3

    .line 543
    :cond_2
    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 544
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready to be played, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled or inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 547
    :cond_3
    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/an$k;->b()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 549
    :cond_4
    const/4 v0, 0x5

    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 550
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready to be played, as AdColony currently has no videos available to be played in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 553
    :cond_5
    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 554
    const/4 v3, 0x0

    move v4, v1

    .line 555
    :goto_1
    if-ge v4, v5, :cond_9

    .line 557
    invoke-virtual {p0}, Lcom/jirbo/adcolony/an$e;->i()Lcom/jirbo/adcolony/an$a;

    move-result-object v2

    .line 558
    if-nez v2, :cond_6

    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "Ad is not ready to be played due to an unknown error."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 559
    :cond_6
    invoke-virtual {v2}, Lcom/jirbo/adcolony/an$a;->a()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 567
    :goto_2
    if-nez v2, :cond_8

    .line 569
    const/4 v0, 0x6

    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 570
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready to be played, as AdColony currently has no videos available to be played in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 564
    :cond_7
    invoke-virtual {p0}, Lcom/jirbo/adcolony/an$e;->k()V

    .line 555
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 573
    :cond_8
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/an$e;->a(Lcom/jirbo/adcolony/an$a;)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move-object v2, v3

    goto :goto_2
.end method

.method b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 525
    iget v1, p0, Lcom/jirbo/adcolony/an$e;->s:I

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->n:Lcom/jirbo/adcolony/an$g;

    iget v2, v2, Lcom/jirbo/adcolony/an$g;->f:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 527
    iput v0, p0, Lcom/jirbo/adcolony/an$e;->s:I

    .line 528
    const/4 v0, 0x1

    .line 530
    :cond_0
    return v0
.end method

.method b(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 653
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/an$e;->f()Z

    move-result v0

    .line 671
    :cond_0
    :goto_0
    return v0

    .line 654
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->g:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->h:Z

    if-nez v1, :cond_3

    .line 656
    :cond_2
    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 657
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled or inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 659
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->b()I

    move-result v1

    if-nez v1, :cond_4

    .line 661
    const/4 v0, 0x5

    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 662
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as there are currently no ads to play in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 664
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->c()Lcom/jirbo/adcolony/an$a;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an$j;->a:Z

    if-eqz v1, :cond_0

    .line 666
    const/16 v0, 0xe

    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 667
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is V4VC enabled and must be played using an AdColonyV4VCAd object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 535
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/jirbo/adcolony/an$e;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method c(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 695
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/an$e;->h()Z

    move-result v0

    .line 713
    :cond_0
    :goto_0
    return v0

    .line 696
    :cond_1
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->g:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->h:Z

    if-nez v1, :cond_3

    .line 698
    :cond_2
    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 699
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled or inactive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 701
    :cond_3
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->b()I

    move-result v1

    if-nez v1, :cond_4

    .line 703
    const/4 v0, 0x5

    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 704
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as there are currently no ads to play in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 706
    :cond_4
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->c()Lcom/jirbo/adcolony/an$a;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an$j;->a:Z

    if-nez v1, :cond_0

    .line 712
    const/16 v0, 0xf

    sput v0, Lcom/jirbo/adcolony/t;->aa:I

    .line 713
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad is not ready, as zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not V4VC enabled and must be played using an AdColonyVideoAd object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method d()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 605
    iget v2, p0, Lcom/jirbo/adcolony/an$e;->c:I

    if-gt v2, v1, :cond_1

    .line 617
    :cond_0
    :goto_0
    return v0

    .line 610
    :cond_1
    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, v2, Lcom/jirbo/adcolony/af;->g:Lcom/jirbo/adcolony/aa;

    iput-boolean v1, v2, Lcom/jirbo/adcolony/aa;->b:Z

    .line 611
    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    iget v3, v2, Lcom/jirbo/adcolony/z;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/jirbo/adcolony/z;->b:I

    if-eqz v3, :cond_0

    .line 616
    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    iget v2, v2, Lcom/jirbo/adcolony/z;->b:I

    iget v3, p0, Lcom/jirbo/adcolony/an$e;->c:I

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    iput v0, v2, Lcom/jirbo/adcolony/z;->b:I

    :cond_2
    move v0, v1

    .line 617
    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/an$e;->b(Z)Z

    move-result v0

    return v0
.end method

.method f()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 676
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->h:Z

    if-nez v1, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v0

    .line 677
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->b()I

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->c()Lcom/jirbo/adcolony/an$a;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an$j;->a:Z

    if-nez v1, :cond_0

    .line 684
    const/4 v0, 0x1

    goto :goto_0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/an$e;->c(Z)Z

    move-result v0

    return v0
.end method

.method h()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 718
    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/jirbo/adcolony/an$e;->h:Z

    if-nez v1, :cond_1

    .line 726
    :cond_0
    :goto_0
    return v0

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->b()I

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->c()Lcom/jirbo/adcolony/an$a;

    move-result-object v1

    iget-object v1, v1, Lcom/jirbo/adcolony/an$a;->v:Lcom/jirbo/adcolony/an$j;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/an$j;->a:Z

    if-eqz v1, :cond_0

    .line 722
    const/4 v0, 0x1

    goto :goto_0
.end method

.method i()Lcom/jirbo/adcolony/an$a;
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    iget v2, v2, Lcom/jirbo/adcolony/z;->c:I

    iget-object v3, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/an$k;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/an$a;

    move-result-object v0

    .line 733
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()Lcom/jirbo/adcolony/an$a;
    .locals 3

    .prologue
    .line 738
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    iget v1, v1, Lcom/jirbo/adcolony/z;->c:I

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/an$k;->b(I)Lcom/jirbo/adcolony/an$a;

    move-result-object v0

    .line 739
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()V
    .locals 3

    .prologue
    .line 744
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->r:Lcom/jirbo/adcolony/z;

    iget v1, v1, Lcom/jirbo/adcolony/z;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/jirbo/adcolony/an$e;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/jirbo/adcolony/z;->c:I

    .line 748
    :cond_0
    return-void
.end method

.method l()V
    .locals 2

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$e;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jirbo/adcolony/an$e;->h:Z

    if-nez v0, :cond_1

    .line 812
    :cond_0
    return-void

    .line 808
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$k;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/jirbo/adcolony/an$e;->m:Lcom/jirbo/adcolony/an$k;

    invoke-virtual {v1, v0}, Lcom/jirbo/adcolony/an$k;->a(I)Lcom/jirbo/adcolony/an$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jirbo/adcolony/an$a;->d()V

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
