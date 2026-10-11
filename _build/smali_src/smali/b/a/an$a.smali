.class Lb/a/an$a;
.super Lb/a/ca;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/an;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/an$1;)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lb/a/an$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/an;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    .line 648
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 651
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 652
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-nez v1, :cond_0

    .line 741
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 744
    invoke-virtual {p2}, Lb/a/an;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 745
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

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

    .line 655
    :cond_0
    iget-short v1, v0, Lb/a/bo;->c:S

    packed-switch v1, :pswitch_data_0

    .line 737
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 739
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 657
    :pswitch_0
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_1

    .line 658
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/an;->a:Ljava/lang/String;

    .line 659
    invoke-virtual {p2, v2}, Lb/a/an;->a(Z)V

    goto :goto_1

    .line 661
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 665
    :pswitch_1
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_2

    .line 666
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/an;->b:Ljava/lang/String;

    .line 667
    invoke-virtual {p2, v2}, Lb/a/an;->b(Z)V

    goto :goto_1

    .line 669
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 673
    :pswitch_2
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_3

    .line 674
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/an;->c:Ljava/lang/String;

    .line 675
    invoke-virtual {p2, v2}, Lb/a/an;->c(Z)V

    goto :goto_1

    .line 677
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 681
    :pswitch_3
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_4

    .line 682
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/an;->d:I

    .line 683
    invoke-virtual {p2, v2}, Lb/a/an;->d(Z)V

    goto :goto_1

    .line 685
    :cond_4
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 689
    :pswitch_4
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_5

    .line 690
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/an;->e:I

    .line 691
    invoke-virtual {p2, v2}, Lb/a/an;->e(Z)V

    goto :goto_1

    .line 693
    :cond_5
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 697
    :pswitch_5
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_6

    .line 698
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/an;->f:I

    .line 699
    invoke-virtual {p2, v2}, Lb/a/an;->f(Z)V

    goto :goto_1

    .line 701
    :cond_6
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 705
    :pswitch_6
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_7

    .line 706
    invoke-virtual {p1}, Lb/a/br;->w()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lb/a/an;->g:Ljava/nio/ByteBuffer;

    .line 707
    invoke-virtual {p2, v2}, Lb/a/an;->g(Z)V

    goto/16 :goto_1

    .line 709
    :cond_7
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 713
    :pswitch_7
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_8

    .line 714
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/an;->h:Ljava/lang/String;

    .line 715
    invoke-virtual {p2, v2}, Lb/a/an;->h(Z)V

    goto/16 :goto_1

    .line 717
    :cond_8
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 721
    :pswitch_8
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v3, :cond_9

    .line 722
    invoke-virtual {p1}, Lb/a/br;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/an;->i:Ljava/lang/String;

    .line 723
    invoke-virtual {p2, v2}, Lb/a/an;->i(Z)V

    goto/16 :goto_1

    .line 725
    :cond_9
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 729
    :pswitch_9
    iget-byte v1, v0, Lb/a/bo;->b:B

    if-ne v1, v4, :cond_a

    .line 730
    invoke-virtual {p1}, Lb/a/br;->s()I

    move-result v0

    iput v0, p2, Lb/a/an;->j:I

    .line 731
    invoke-virtual {p2, v2}, Lb/a/an;->j(Z)V

    goto/16 :goto_1

    .line 733
    :cond_a
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 747
    :cond_b
    invoke-virtual {p2}, Lb/a/an;->b()Z

    move-result v0

    if-nez v0, :cond_c

    .line 748
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

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

    .line 750
    :cond_c
    invoke-virtual {p2}, Lb/a/an;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 751
    new-instance v0, Lb/a/bs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

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

    .line 753
    :cond_d
    invoke-virtual {p2}, Lb/a/an;->e()V

    .line 754
    return-void

    .line 655
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
    .line 644
    check-cast p2, Lb/a/an;

    invoke-virtual {p0, p1, p2}, Lb/a/an$a;->b(Lb/a/br;Lb/a/an;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/an;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p2}, Lb/a/an;->e()V

    .line 759
    invoke-static {}, Lb/a/an;->f()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 760
    iget-object v0, p2, Lb/a/an;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 761
    invoke-static {}, Lb/a/an;->g()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 762
    iget-object v0, p2, Lb/a/an;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 765
    :cond_0
    iget-object v0, p2, Lb/a/an;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 766
    invoke-static {}, Lb/a/an;->h()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 767
    iget-object v0, p2, Lb/a/an;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 770
    :cond_1
    iget-object v0, p2, Lb/a/an;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 771
    invoke-static {}, Lb/a/an;->i()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 772
    iget-object v0, p2, Lb/a/an;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 775
    :cond_2
    invoke-static {}, Lb/a/an;->j()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 776
    iget v0, p2, Lb/a/an;->d:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 777
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 778
    invoke-static {}, Lb/a/an;->k()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 779
    iget v0, p2, Lb/a/an;->e:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 780
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 781
    invoke-static {}, Lb/a/an;->l()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 782
    iget v0, p2, Lb/a/an;->f:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 783
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 784
    iget-object v0, p2, Lb/a/an;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 785
    invoke-static {}, Lb/a/an;->m()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 786
    iget-object v0, p2, Lb/a/an;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/nio/ByteBuffer;)V

    .line 787
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 789
    :cond_3
    iget-object v0, p2, Lb/a/an;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 790
    invoke-static {}, Lb/a/an;->n()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 791
    iget-object v0, p2, Lb/a/an;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 794
    :cond_4
    iget-object v0, p2, Lb/a/an;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 795
    invoke-static {}, Lb/a/an;->o()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 796
    iget-object v0, p2, Lb/a/an;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/br;->a(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 799
    :cond_5
    invoke-virtual {p2}, Lb/a/an;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 800
    invoke-static {}, Lb/a/an;->p()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 801
    iget v0, p2, Lb/a/an;->j:I

    invoke-virtual {p1, v0}, Lb/a/br;->a(I)V

    .line 802
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 804
    :cond_6
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 805
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 806
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
    .line 644
    check-cast p2, Lb/a/an;

    invoke-virtual {p0, p1, p2}, Lb/a/an$a;->a(Lb/a/br;Lb/a/an;)V

    return-void
.end method
