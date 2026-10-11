.class Lb/a/ak$a;
.super Lb/a/ca;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/ak;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ak$1;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Lb/a/ak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ak;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v7, 0xf

    const/4 v1, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 536
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 539
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 540
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-nez v2, :cond_0

    .line 628
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 631
    invoke-virtual {p2}, Lb/a/ak;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 632
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'start_time\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    iget-short v2, v0, Lb/a/bo;->c:S

    packed-switch v2, :pswitch_data_0

    .line 624
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 626
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 545
    :pswitch_0
    iget-byte v2, v0, Lb/a/bo;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 546
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ak;->a:Ljava/lang/String;

    .line 547
    invoke-virtual {p2, v5}, Lb/a/ak;->a(Z)V

    goto :goto_1

    .line 549
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 553
    :pswitch_1
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_2

    .line 554
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/ak;->b:J

    .line 555
    invoke-virtual {p2, v5}, Lb/a/ak;->b(Z)V

    goto :goto_1

    .line 557
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 561
    :pswitch_2
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_3

    .line 562
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/ak;->c:J

    .line 563
    invoke-virtual {p2, v5}, Lb/a/ak;->c(Z)V

    goto :goto_1

    .line 565
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 569
    :pswitch_3
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_4

    .line 570
    invoke-virtual {p1}, Lb/a/br;->t()J

    move-result-wide v2

    iput-wide v2, p2, Lb/a/ak;->d:J

    .line 571
    invoke-virtual {p2, v5}, Lb/a/ak;->d(Z)V

    goto :goto_1

    .line 573
    :cond_4
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 577
    :pswitch_4
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v7, :cond_6

    .line 579
    invoke-virtual {p1}, Lb/a/br;->l()Lb/a/bp;

    move-result-object v2

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/bp;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/ak;->e:Ljava/util/List;

    move v0, v1

    .line 581
    :goto_2
    iget v3, v2, Lb/a/bp;->b:I

    if-ge v0, v3, :cond_5

    .line 584
    new-instance v3, Lb/a/af;

    invoke-direct {v3}, Lb/a/af;-><init>()V

    .line 585
    invoke-virtual {v3, p1}, Lb/a/af;->a(Lb/a/br;)V

    .line 586
    iget-object v4, p2, Lb/a/ak;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 588
    :cond_5
    invoke-virtual {p1}, Lb/a/br;->m()V

    .line 590
    invoke-virtual {p2, v5}, Lb/a/ak;->e(Z)V

    goto/16 :goto_1

    .line 592
    :cond_6
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 596
    :pswitch_5
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v7, :cond_8

    .line 598
    invoke-virtual {p1}, Lb/a/br;->l()Lb/a/bp;

    move-result-object v2

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/bp;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/ak;->f:Ljava/util/List;

    move v0, v1

    .line 600
    :goto_3
    iget v3, v2, Lb/a/bp;->b:I

    if-ge v0, v3, :cond_7

    .line 603
    new-instance v3, Lb/a/ad;

    invoke-direct {v3}, Lb/a/ad;-><init>()V

    .line 604
    invoke-virtual {v3, p1}, Lb/a/ad;->a(Lb/a/br;)V

    .line 605
    iget-object v4, p2, Lb/a/ak;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 607
    :cond_7
    invoke-virtual {p1}, Lb/a/br;->m()V

    .line 609
    invoke-virtual {p2, v5}, Lb/a/ak;->f(Z)V

    goto/16 :goto_1

    .line 611
    :cond_8
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 615
    :pswitch_6
    iget-byte v2, v0, Lb/a/bo;->b:B

    const/16 v3, 0xc

    if-ne v2, v3, :cond_9

    .line 616
    new-instance v0, Lb/a/al;

    invoke-direct {v0}, Lb/a/al;-><init>()V

    iput-object v0, p2, Lb/a/ak;->g:Lb/a/al;

    .line 617
    iget-object v0, p2, Lb/a/ak;->g:Lb/a/al;

    invoke-virtual {v0, p1}, Lb/a/al;->a(Lb/a/br;)V

    .line 618
    invoke-virtual {p2, v5}, Lb/a/ak;->g(Z)V

    goto/16 :goto_1

    .line 620
    :cond_9
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 634
    :cond_a
    invoke-virtual {p2}, Lb/a/ak;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 635
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'end_time\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_b
    invoke-virtual {p2}, Lb/a/ak;->c()Z

    move-result v0

    if-nez v0, :cond_c

    .line 638
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/bs;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_c
    invoke-virtual {p2}, Lb/a/ak;->h()V

    .line 641
    return-void

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public synthetic a(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 532
    check-cast p2, Lb/a/ak;

    invoke-virtual {p0, p1, p2}, Lb/a/ak$a;->b(Lb/a/br;Lb/a/ak;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ak;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 644
    invoke-virtual {p2}, Lb/a/ak;->h()V

    .line 646
    invoke-static {}, Lb/a/ak;->i()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 647
    iget-object v0, p2, Lb/a/ak;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 648
    invoke-static {}, Lb/a/ak;->j()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 649
    iget-object v0, p2, Lb/a/ak;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 652
    :cond_0
    invoke-static {}, Lb/a/ak;->k()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 653
    iget-wide v0, p2, Lb/a/ak;->b:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 654
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 655
    invoke-static {}, Lb/a/ak;->l()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 656
    iget-wide v0, p2, Lb/a/ak;->c:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 657
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 658
    invoke-static {}, Lb/a/ak;->m()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 659
    iget-wide v0, p2, Lb/a/ak;->d:J

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(J)V

    .line 660
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 661
    iget-object v0, p2, Lb/a/ak;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 662
    invoke-virtual {p2}, Lb/a/ak;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    invoke-static {}, Lb/a/ak;->n()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 665
    new-instance v0, Lb/a/bp;

    iget-object v1, p2, Lb/a/ak;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/bp;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bp;)V

    .line 666
    iget-object v0, p2, Lb/a/ak;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/af;

    .line 668
    invoke-virtual {v0, p1}, Lb/a/af;->b(Lb/a/br;)V

    goto :goto_0

    .line 670
    :cond_1
    invoke-virtual {p1}, Lb/a/br;->e()V

    .line 672
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 675
    :cond_2
    iget-object v0, p2, Lb/a/ak;->f:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 676
    invoke-virtual {p2}, Lb/a/ak;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 677
    invoke-static {}, Lb/a/ak;->o()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 679
    new-instance v0, Lb/a/bp;

    iget-object v1, p2, Lb/a/ak;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/bp;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bp;)V

    .line 680
    iget-object v0, p2, Lb/a/ak;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ad;

    .line 682
    invoke-virtual {v0, p1}, Lb/a/ad;->b(Lb/a/br;)V

    goto :goto_1

    .line 684
    :cond_3
    invoke-virtual {p1}, Lb/a/br;->e()V

    .line 686
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 689
    :cond_4
    iget-object v0, p2, Lb/a/ak;->g:Lb/a/al;

    if-eqz v0, :cond_5

    .line 690
    invoke-virtual {p2}, Lb/a/ak;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 691
    invoke-static {}, Lb/a/ak;->p()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 692
    iget-object v0, p2, Lb/a/ak;->g:Lb/a/al;

    invoke-virtual {v0, p1}, Lb/a/al;->b(Lb/a/br;)V

    .line 693
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 696
    :cond_5
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 697
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 698
    return-void
.end method

.method public synthetic b(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 532
    check-cast p2, Lb/a/ak;

    invoke-virtual {p0, p1, p2}, Lb/a/ak$a;->a(Lb/a/br;Lb/a/ak;)V

    return-void
.end method
