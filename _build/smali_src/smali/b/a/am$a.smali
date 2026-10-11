.class Lb/a/am$a;
.super Lb/a/ca;
.source "UALogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/ca",
        "<",
        "Lb/a/am;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 749
    invoke-direct {p0}, Lb/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/am$1;)V
    .locals 0

    .prologue
    .line 749
    invoke-direct {p0}, Lb/a/am$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/am;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v7, 0xf

    const/4 v1, 0x0

    const/16 v6, 0xc

    const/4 v5, 0x1

    .line 753
    invoke-virtual {p1}, Lb/a/br;->f()Lb/a/bw;

    .line 756
    :goto_0
    invoke-virtual {p1}, Lb/a/br;->h()Lb/a/bo;

    move-result-object v0

    .line 757
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-nez v2, :cond_0

    .line 885
    invoke-virtual {p1}, Lb/a/br;->g()V

    .line 888
    invoke-virtual {p2}, Lb/a/am;->k()V

    .line 889
    return-void

    .line 760
    :cond_0
    iget-short v2, v0, Lb/a/bo;->c:S

    packed-switch v2, :pswitch_data_0

    .line 881
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    .line 883
    :goto_1
    invoke-virtual {p1}, Lb/a/br;->i()V

    goto :goto_0

    .line 762
    :pswitch_0
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_1

    .line 763
    new-instance v0, Lb/a/p;

    invoke-direct {v0}, Lb/a/p;-><init>()V

    iput-object v0, p2, Lb/a/am;->a:Lb/a/p;

    .line 764
    iget-object v0, p2, Lb/a/am;->a:Lb/a/p;

    invoke-virtual {v0, p1}, Lb/a/p;->a(Lb/a/br;)V

    .line 765
    invoke-virtual {p2, v5}, Lb/a/am;->a(Z)V

    goto :goto_1

    .line 767
    :cond_1
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 771
    :pswitch_1
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_2

    .line 772
    new-instance v0, Lb/a/o;

    invoke-direct {v0}, Lb/a/o;-><init>()V

    iput-object v0, p2, Lb/a/am;->b:Lb/a/o;

    .line 773
    iget-object v0, p2, Lb/a/am;->b:Lb/a/o;

    invoke-virtual {v0, p1}, Lb/a/o;->a(Lb/a/br;)V

    .line 774
    invoke-virtual {p2, v5}, Lb/a/am;->b(Z)V

    goto :goto_1

    .line 776
    :cond_2
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 780
    :pswitch_2
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_3

    .line 781
    new-instance v0, Lb/a/r;

    invoke-direct {v0}, Lb/a/r;-><init>()V

    iput-object v0, p2, Lb/a/am;->c:Lb/a/r;

    .line 782
    iget-object v0, p2, Lb/a/am;->c:Lb/a/r;

    invoke-virtual {v0, p1}, Lb/a/r;->a(Lb/a/br;)V

    .line 783
    invoke-virtual {p2, v5}, Lb/a/am;->c(Z)V

    goto :goto_1

    .line 785
    :cond_3
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 789
    :pswitch_3
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_4

    .line 790
    new-instance v0, Lb/a/ae;

    invoke-direct {v0}, Lb/a/ae;-><init>()V

    iput-object v0, p2, Lb/a/am;->d:Lb/a/ae;

    .line 791
    iget-object v0, p2, Lb/a/am;->d:Lb/a/ae;

    invoke-virtual {v0, p1}, Lb/a/ae;->a(Lb/a/br;)V

    .line 792
    invoke-virtual {p2, v5}, Lb/a/am;->d(Z)V

    goto :goto_1

    .line 794
    :cond_4
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto :goto_1

    .line 798
    :pswitch_4
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_5

    .line 799
    new-instance v0, Lb/a/m;

    invoke-direct {v0}, Lb/a/m;-><init>()V

    iput-object v0, p2, Lb/a/am;->e:Lb/a/m;

    .line 800
    iget-object v0, p2, Lb/a/am;->e:Lb/a/m;

    invoke-virtual {v0, p1}, Lb/a/m;->a(Lb/a/br;)V

    .line 801
    invoke-virtual {p2, v5}, Lb/a/am;->e(Z)V

    goto :goto_1

    .line 803
    :cond_5
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 807
    :pswitch_5
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v7, :cond_7

    .line 809
    invoke-virtual {p1}, Lb/a/br;->l()Lb/a/bp;

    move-result-object v2

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/bp;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/am;->f:Ljava/util/List;

    move v0, v1

    .line 811
    :goto_2
    iget v3, v2, Lb/a/bp;->b:I

    if-ge v0, v3, :cond_6

    .line 814
    new-instance v3, Lb/a/ab;

    invoke-direct {v3}, Lb/a/ab;-><init>()V

    .line 815
    invoke-virtual {v3, p1}, Lb/a/ab;->a(Lb/a/br;)V

    .line 816
    iget-object v4, p2, Lb/a/am;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 818
    :cond_6
    invoke-virtual {p1}, Lb/a/br;->m()V

    .line 820
    invoke-virtual {p2, v5}, Lb/a/am;->f(Z)V

    goto/16 :goto_1

    .line 822
    :cond_7
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 826
    :pswitch_6
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v7, :cond_9

    .line 828
    invoke-virtual {p1}, Lb/a/br;->l()Lb/a/bp;

    move-result-object v2

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lb/a/bp;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/am;->g:Ljava/util/List;

    move v0, v1

    .line 830
    :goto_3
    iget v3, v2, Lb/a/bp;->b:I

    if-ge v0, v3, :cond_8

    .line 833
    new-instance v3, Lb/a/ak;

    invoke-direct {v3}, Lb/a/ak;-><init>()V

    .line 834
    invoke-virtual {v3, p1}, Lb/a/ak;->a(Lb/a/br;)V

    .line 835
    iget-object v4, p2, Lb/a/am;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 837
    :cond_8
    invoke-virtual {p1}, Lb/a/br;->m()V

    .line 839
    invoke-virtual {p2, v5}, Lb/a/am;->g(Z)V

    goto/16 :goto_1

    .line 841
    :cond_9
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 845
    :pswitch_7
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_a

    .line 846
    new-instance v0, Lb/a/z;

    invoke-direct {v0}, Lb/a/z;-><init>()V

    iput-object v0, p2, Lb/a/am;->h:Lb/a/z;

    .line 847
    iget-object v0, p2, Lb/a/am;->h:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->a(Lb/a/br;)V

    .line 848
    invoke-virtual {p2, v5}, Lb/a/am;->h(Z)V

    goto/16 :goto_1

    .line 850
    :cond_a
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 854
    :pswitch_8
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_b

    .line 855
    new-instance v0, Lb/a/x;

    invoke-direct {v0}, Lb/a/x;-><init>()V

    iput-object v0, p2, Lb/a/am;->i:Lb/a/x;

    .line 856
    iget-object v0, p2, Lb/a/am;->i:Lb/a/x;

    invoke-virtual {v0, p1}, Lb/a/x;->a(Lb/a/br;)V

    .line 857
    invoke-virtual {p2, v5}, Lb/a/am;->i(Z)V

    goto/16 :goto_1

    .line 859
    :cond_b
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 863
    :pswitch_9
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_c

    .line 864
    new-instance v0, Lb/a/n;

    invoke-direct {v0}, Lb/a/n;-><init>()V

    iput-object v0, p2, Lb/a/am;->j:Lb/a/n;

    .line 865
    iget-object v0, p2, Lb/a/am;->j:Lb/a/n;

    invoke-virtual {v0, p1}, Lb/a/n;->a(Lb/a/br;)V

    .line 866
    invoke-virtual {p2, v5}, Lb/a/am;->j(Z)V

    goto/16 :goto_1

    .line 868
    :cond_c
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 872
    :pswitch_a
    iget-byte v2, v0, Lb/a/bo;->b:B

    if-ne v2, v6, :cond_d

    .line 873
    new-instance v0, Lb/a/q;

    invoke-direct {v0}, Lb/a/q;-><init>()V

    iput-object v0, p2, Lb/a/am;->k:Lb/a/q;

    .line 874
    iget-object v0, p2, Lb/a/am;->k:Lb/a/q;

    invoke-virtual {v0, p1}, Lb/a/q;->a(Lb/a/br;)V

    .line 875
    invoke-virtual {p2, v5}, Lb/a/am;->k(Z)V

    goto/16 :goto_1

    .line 877
    :cond_d
    iget-byte v0, v0, Lb/a/bo;->b:B

    invoke-static {p1, v0}, Lb/a/bu;->a(Lb/a/br;B)V

    goto/16 :goto_1

    .line 760
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
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
    .line 749
    check-cast p2, Lb/a/am;

    invoke-virtual {p0, p1, p2}, Lb/a/am$a;->b(Lb/a/br;Lb/a/am;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/am;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v2, 0xc

    .line 892
    invoke-virtual {p2}, Lb/a/am;->k()V

    .line 894
    invoke-static {}, Lb/a/am;->l()Lb/a/bw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bw;)V

    .line 895
    iget-object v0, p2, Lb/a/am;->a:Lb/a/p;

    if-eqz v0, :cond_0

    .line 896
    invoke-static {}, Lb/a/am;->m()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 897
    iget-object v0, p2, Lb/a/am;->a:Lb/a/p;

    invoke-virtual {v0, p1}, Lb/a/p;->b(Lb/a/br;)V

    .line 898
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 900
    :cond_0
    iget-object v0, p2, Lb/a/am;->b:Lb/a/o;

    if-eqz v0, :cond_1

    .line 901
    invoke-static {}, Lb/a/am;->n()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 902
    iget-object v0, p2, Lb/a/am;->b:Lb/a/o;

    invoke-virtual {v0, p1}, Lb/a/o;->b(Lb/a/br;)V

    .line 903
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 905
    :cond_1
    iget-object v0, p2, Lb/a/am;->c:Lb/a/r;

    if-eqz v0, :cond_2

    .line 906
    invoke-static {}, Lb/a/am;->o()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 907
    iget-object v0, p2, Lb/a/am;->c:Lb/a/r;

    invoke-virtual {v0, p1}, Lb/a/r;->b(Lb/a/br;)V

    .line 908
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 910
    :cond_2
    iget-object v0, p2, Lb/a/am;->d:Lb/a/ae;

    if-eqz v0, :cond_3

    .line 911
    invoke-static {}, Lb/a/am;->p()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 912
    iget-object v0, p2, Lb/a/am;->d:Lb/a/ae;

    invoke-virtual {v0, p1}, Lb/a/ae;->b(Lb/a/br;)V

    .line 913
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 915
    :cond_3
    iget-object v0, p2, Lb/a/am;->e:Lb/a/m;

    if-eqz v0, :cond_4

    .line 916
    invoke-virtual {p2}, Lb/a/am;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 917
    invoke-static {}, Lb/a/am;->q()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 918
    iget-object v0, p2, Lb/a/am;->e:Lb/a/m;

    invoke-virtual {v0, p1}, Lb/a/m;->b(Lb/a/br;)V

    .line 919
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 922
    :cond_4
    iget-object v0, p2, Lb/a/am;->f:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 923
    invoke-virtual {p2}, Lb/a/am;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 924
    invoke-static {}, Lb/a/am;->r()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 926
    new-instance v0, Lb/a/bp;

    iget-object v1, p2, Lb/a/am;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/bp;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bp;)V

    .line 927
    iget-object v0, p2, Lb/a/am;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ab;

    .line 929
    invoke-virtual {v0, p1}, Lb/a/ab;->b(Lb/a/br;)V

    goto :goto_0

    .line 931
    :cond_5
    invoke-virtual {p1}, Lb/a/br;->e()V

    .line 933
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 936
    :cond_6
    iget-object v0, p2, Lb/a/am;->g:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 937
    invoke-virtual {p2}, Lb/a/am;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 938
    invoke-static {}, Lb/a/am;->s()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 940
    new-instance v0, Lb/a/bp;

    iget-object v1, p2, Lb/a/am;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lb/a/bp;-><init>(BI)V

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bp;)V

    .line 941
    iget-object v0, p2, Lb/a/am;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ak;

    .line 943
    invoke-virtual {v0, p1}, Lb/a/ak;->b(Lb/a/br;)V

    goto :goto_1

    .line 945
    :cond_7
    invoke-virtual {p1}, Lb/a/br;->e()V

    .line 947
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 950
    :cond_8
    iget-object v0, p2, Lb/a/am;->h:Lb/a/z;

    if-eqz v0, :cond_9

    .line 951
    invoke-virtual {p2}, Lb/a/am;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 952
    invoke-static {}, Lb/a/am;->t()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 953
    iget-object v0, p2, Lb/a/am;->h:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->b(Lb/a/br;)V

    .line 954
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 957
    :cond_9
    iget-object v0, p2, Lb/a/am;->i:Lb/a/x;

    if-eqz v0, :cond_a

    .line 958
    invoke-virtual {p2}, Lb/a/am;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 959
    invoke-static {}, Lb/a/am;->u()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 960
    iget-object v0, p2, Lb/a/am;->i:Lb/a/x;

    invoke-virtual {v0, p1}, Lb/a/x;->b(Lb/a/br;)V

    .line 961
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 964
    :cond_a
    iget-object v0, p2, Lb/a/am;->j:Lb/a/n;

    if-eqz v0, :cond_b

    .line 965
    invoke-virtual {p2}, Lb/a/am;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 966
    invoke-static {}, Lb/a/am;->v()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 967
    iget-object v0, p2, Lb/a/am;->j:Lb/a/n;

    invoke-virtual {v0, p1}, Lb/a/n;->b(Lb/a/br;)V

    .line 968
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 971
    :cond_b
    iget-object v0, p2, Lb/a/am;->k:Lb/a/q;

    if-eqz v0, :cond_c

    .line 972
    invoke-virtual {p2}, Lb/a/am;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 973
    invoke-static {}, Lb/a/am;->w()Lb/a/bo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/br;->a(Lb/a/bo;)V

    .line 974
    iget-object v0, p2, Lb/a/am;->k:Lb/a/q;

    invoke-virtual {v0, p1}, Lb/a/q;->b(Lb/a/br;)V

    .line 975
    invoke-virtual {p1}, Lb/a/br;->b()V

    .line 978
    :cond_c
    invoke-virtual {p1}, Lb/a/br;->c()V

    .line 979
    invoke-virtual {p1}, Lb/a/br;->a()V

    .line 980
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
    .line 749
    check-cast p2, Lb/a/am;

    invoke-virtual {p0, p1, p2}, Lb/a/am$a;->a(Lb/a/br;Lb/a/am;)V

    return-void
.end method
