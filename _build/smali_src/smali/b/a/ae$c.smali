.class Lb/a/ae$c;
.super Lb/a/cb;
.source "MiscInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/ae;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/ae$1;)V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lb/a/ae$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/ae;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 805
    check-cast p1, Lb/a/bx;

    .line 806
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 807
    invoke-virtual {p2}, Lb/a/ae;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 810
    :cond_0
    invoke-virtual {p2}, Lb/a/ae;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 813
    :cond_1
    invoke-virtual {p2}, Lb/a/ae;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 814
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 816
    :cond_2
    invoke-virtual {p2}, Lb/a/ae;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 817
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 819
    :cond_3
    invoke-virtual {p2}, Lb/a/ae;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 820
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 822
    :cond_4
    invoke-virtual {p2}, Lb/a/ae;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 823
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 825
    :cond_5
    invoke-virtual {p2}, Lb/a/ae;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 826
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 828
    :cond_6
    invoke-virtual {p2}, Lb/a/ae;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 829
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 831
    :cond_7
    invoke-virtual {p2}, Lb/a/ae;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 832
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 834
    :cond_8
    invoke-virtual {p2}, Lb/a/ae;->j()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 835
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 837
    :cond_9
    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(Ljava/util/BitSet;I)V

    .line 838
    invoke-virtual {p2}, Lb/a/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 839
    iget v0, p2, Lb/a/ae;->a:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 841
    :cond_a
    invoke-virtual {p2}, Lb/a/ae;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 842
    iget-object v0, p2, Lb/a/ae;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 844
    :cond_b
    invoke-virtual {p2}, Lb/a/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 845
    iget-object v0, p2, Lb/a/ae;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 847
    :cond_c
    invoke-virtual {p2}, Lb/a/ae;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 848
    iget-wide v0, p2, Lb/a/ae;->d:D

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(D)V

    .line 850
    :cond_d
    invoke-virtual {p2}, Lb/a/ae;->e()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 851
    iget-wide v0, p2, Lb/a/ae;->e:D

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(D)V

    .line 853
    :cond_e
    invoke-virtual {p2}, Lb/a/ae;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 854
    iget-object v0, p2, Lb/a/ae;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 856
    :cond_f
    invoke-virtual {p2}, Lb/a/ae;->g()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 857
    iget v0, p2, Lb/a/ae;->g:I

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 859
    :cond_10
    invoke-virtual {p2}, Lb/a/ae;->h()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 860
    iget-object v0, p2, Lb/a/ae;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 862
    :cond_11
    invoke-virtual {p2}, Lb/a/ae;->i()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 863
    iget-object v0, p2, Lb/a/ae;->i:Lb/a/l;

    invoke-virtual {v0}, Lb/a/l;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 865
    :cond_12
    invoke-virtual {p2}, Lb/a/ae;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 866
    iget-object v0, p2, Lb/a/ae;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lb/a/bx;->a(Ljava/lang/String;)V

    .line 868
    :cond_13
    return-void
.end method

.method public bridge synthetic a(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 801
    check-cast p2, Lb/a/ae;

    invoke-virtual {p0, p1, p2}, Lb/a/ae$c;->a(Lb/a/br;Lb/a/ae;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/ae;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 872
    check-cast p1, Lb/a/bx;

    .line 873
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lb/a/bx;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 874
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v1

    iput v1, p2, Lb/a/ae;->a:I

    .line 876
    invoke-virtual {p2, v4}, Lb/a/ae;->a(Z)V

    .line 878
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 879
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/ae;->b:Ljava/lang/String;

    .line 880
    invoke-virtual {p2, v4}, Lb/a/ae;->b(Z)V

    .line 882
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 883
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/ae;->c:Ljava/lang/String;

    .line 884
    invoke-virtual {p2, v4}, Lb/a/ae;->c(Z)V

    .line 886
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 887
    invoke-virtual {p1}, Lb/a/bx;->u()D

    move-result-wide v2

    iput-wide v2, p2, Lb/a/ae;->d:D

    .line 888
    invoke-virtual {p2, v4}, Lb/a/ae;->d(Z)V

    .line 890
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 891
    invoke-virtual {p1}, Lb/a/bx;->u()D

    move-result-wide v2

    iput-wide v2, p2, Lb/a/ae;->e:D

    .line 892
    invoke-virtual {p2, v4}, Lb/a/ae;->e(Z)V

    .line 894
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 895
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/ae;->f:Ljava/lang/String;

    .line 896
    invoke-virtual {p2, v4}, Lb/a/ae;->f(Z)V

    .line 898
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 899
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v1

    iput v1, p2, Lb/a/ae;->g:I

    .line 900
    invoke-virtual {p2, v4}, Lb/a/ae;->g(Z)V

    .line 902
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 903
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lb/a/ae;->h:Ljava/lang/String;

    .line 904
    invoke-virtual {p2, v4}, Lb/a/ae;->h(Z)V

    .line 906
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 907
    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v1

    invoke-static {v1}, Lb/a/l;->a(I)Lb/a/l;

    move-result-object v1

    iput-object v1, p2, Lb/a/ae;->i:Lb/a/l;

    .line 908
    invoke-virtual {p2, v4}, Lb/a/ae;->i(Z)V

    .line 910
    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 911
    invoke-virtual {p1}, Lb/a/bx;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lb/a/ae;->j:Ljava/lang/String;

    .line 912
    invoke-virtual {p2, v4}, Lb/a/ae;->j(Z)V

    .line 914
    :cond_9
    return-void
.end method

.method public bridge synthetic b(Lb/a/br;Lb/a/ay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 801
    check-cast p2, Lb/a/ae;

    invoke-virtual {p0, p1, p2}, Lb/a/ae$c;->b(Lb/a/br;Lb/a/ae;)V

    return-void
.end method
