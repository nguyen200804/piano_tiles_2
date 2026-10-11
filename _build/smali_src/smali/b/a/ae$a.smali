.class Lb/a/ae$a;
.super Lb/a/ca;
.source "MiscInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/ae;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ae$1;)V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lb/a/ae$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ae;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 624
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 627
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 628
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 717
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 720
    invoke-virtual {p2}, Lb/a/ae;->k()V

    .line 721
    return-void

    .line 631
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 713
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 715
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 633
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_1

    .line 634
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/ae;->a:I

    .line 635
    invoke-virtual {p2, v2}, Lb/a/ae;->a(Z)V

    goto :goto_1

    .line 637
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 641
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_2

    .line 642
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ae;->b:Ljava/lang/String;

    .line 643
    invoke-virtual {p2, v2}, Lb/a/ae;->b(Z)V

    goto :goto_1

    .line 645
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 649
    :pswitch_2
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_3

    .line 650
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ae;->c:Ljava/lang/String;

    .line 651
    invoke-virtual {p2, v2}, Lb/a/ae;->c(Z)V

    goto :goto_1

    .line 653
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 657
    :pswitch_3
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v5, :cond_4

    .line 658
    invoke-virtual {p1}, Lb/a/br;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ae;->d:D

    .line 659
    invoke-virtual {p2, v2}, Lb/a/ae;->d(Z)V

    goto :goto_1

    .line 661
    :cond_4
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 665
    :pswitch_4
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v5, :cond_5

    .line 666
    invoke-virtual {p1}, Lb/a/br;->u()D

    move-result-wide v0

    iput-wide v0, p2, Lb/a/ae;->e:D

    .line 667
    invoke-virtual {p2, v2}, Lb/a/ae;->e(Z)V

    goto :goto_1

    .line 669
    :cond_5
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 673
    :pswitch_5
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_6

    .line 674
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ae;->f:Ljava/lang/String;

    .line 675
    invoke-virtual {p2, v2}, Lb/a/ae;->f(Z)V

    goto :goto_1

    .line 677
    :cond_6
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 681
    :pswitch_6
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_7

    .line 682
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/ae;->g:I

    .line 683
    invoke-virtual {p2, v2}, Lb/a/ae;->g(Z)V

    goto/16 :goto_1

    .line 685
    :cond_7
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 689
    :pswitch_7
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_8

    .line 690
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ae;->h:Ljava/lang/String;

    .line 691
    invoke-virtual {p2, v2}, Lb/a/ae;->h(Z)V

    goto/16 :goto_1

    .line 693
    :cond_8
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 697
    :pswitch_8
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_9

    .line 698
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    invoke-static {v0}, Lb/a/l;->a(I)Lb/a/l;

    move-result-object v0

    iput-object v0, p2, Lb/a/ae;->i:Lb/a/l;

    .line 699
    invoke-virtual {p2, v2}, Lb/a/ae;->i(Z)V

    goto/16 :goto_1

    .line 701
    :cond_9
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 705
    :pswitch_9
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_a

    .line 706
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ae;->j:Ljava/lang/String;

    .line 707
    invoke-virtual {p2, v2}, Lb/a/ae;->j(Z)V

    goto/16 :goto_1

    .line 709
    :cond_a
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
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
    .line 620
    check-cast p2, Lb/a/ae;

    invoke-virtual {p0, p1, p2}, Lb/a/ae$a;->b(Lb/a/br;Lb/a/ae;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ae;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 724
    invoke-virtual {p2}, Lb/a/ae;->k()V

    .line 726
    invoke-static {}, Lb/a/ae;->l()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 727
    invoke-virtual {p2}, Lb/a/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Lb/a/ae;->m()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 729
    iget v0, p2, Lb/a/ae;->a:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 730
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 732
    :cond_0
    iget-object v0, p2, Lb/a/ae;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {p2}, Lb/a/ae;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    invoke-static {}, Lb/a/ae;->n()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 735
    iget-object v0, p2, Lb/a/ae;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 739
    :cond_1
    iget-object v0, p2, Lb/a/ae;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {p2}, Lb/a/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    invoke-static {}, Lb/a/ae;->o()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 742
    iget-object v0, p2, Lb/a/ae;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 746
    :cond_2
    invoke-virtual {p2}, Lb/a/ae;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    invoke-static {}, Lb/a/ae;->p()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 748
    iget-wide v0, p2, Lb/a/ae;->d:D

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(D)V

    .line 749
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 751
    :cond_3
    invoke-virtual {p2}, Lb/a/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    invoke-static {}, Lb/a/ae;->q()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 753
    iget-wide v0, p2, Lb/a/ae;->e:D

    invoke-virtual {p1, v0, v1}, Lb/a/br;->a(D)V

    .line 754
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 756
    :cond_4
    iget-object v0, p2, Lb/a/ae;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 757
    invoke-virtual {p2}, Lb/a/ae;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 758
    invoke-static {}, Lb/a/ae;->r()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 759
    iget-object v0, p2, Lb/a/ae;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 763
    :cond_5
    invoke-virtual {p2}, Lb/a/ae;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 764
    invoke-static {}, Lb/a/ae;->s()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 765
    iget v0, p2, Lb/a/ae;->g:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 766
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 768
    :cond_6
    iget-object v0, p2, Lb/a/ae;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 769
    invoke-virtual {p2}, Lb/a/ae;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 770
    invoke-static {}, Lb/a/ae;->t()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 771
    iget-object v0, p2, Lb/a/ae;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 775
    :cond_7
    iget-object v0, p2, Lb/a/ae;->i:Lb/a/l;

    if-eqz v0, :cond_8

    .line 776
    invoke-virtual {p2}, Lb/a/ae;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 777
    invoke-static {}, Lb/a/ae;->u()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 778
    iget-object v0, p2, Lb/a/ae;->i:Lb/a/l;

    invoke-virtual {v0}, Lb/a/l;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 779
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 782
    :cond_8
    iget-object v0, p2, Lb/a/ae;->j:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 783
    invoke-virtual {p2}, Lb/a/ae;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 784
    invoke-static {}, Lb/a/ae;->v()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 785
    iget-object v0, p2, Lb/a/ae;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 789
    :cond_9
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 790
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 791
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
    .line 620
    check-cast p2, Lb/a/ae;

    invoke-virtual {p0, p1, p2}, Lb/a/ae$a;->a(Lb/a/br;Lb/a/ae;)V

    return-void
.end method
