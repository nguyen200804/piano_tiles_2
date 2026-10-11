.class Lb/a/am$c;
.super Lb/a/cb;
.source "UALogEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/cb",
        "<",
        "Lb/a/am;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 990
    invoke-direct {p0}, Lb/a/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/am$1;)V
    .locals 0

    .prologue
    .line 990
    invoke-direct {p0}, Lb/a/am$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/br;Lb/a/am;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    .line 994
    check-cast p1, Lb/a/bx;

    .line 995
    iget-object v0, p2, Lb/a/am;->a:Lb/a/p;

    invoke-virtual {v0, p1}, Lb/a/p;->b(Lb/a/br;)V

    .line 996
    iget-object v0, p2, Lb/a/am;->b:Lb/a/o;

    invoke-virtual {v0, p1}, Lb/a/o;->b(Lb/a/br;)V

    .line 997
    iget-object v0, p2, Lb/a/am;->c:Lb/a/r;

    invoke-virtual {v0, p1}, Lb/a/r;->b(Lb/a/br;)V

    .line 998
    iget-object v0, p2, Lb/a/am;->d:Lb/a/ae;

    invoke-virtual {v0, p1}, Lb/a/ae;->b(Lb/a/br;)V

    .line 999
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1000
    invoke-virtual {p2}, Lb/a/am;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1001
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1003
    :cond_0
    invoke-virtual {p2}, Lb/a/am;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1004
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1006
    :cond_1
    invoke-virtual {p2}, Lb/a/am;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1007
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1009
    :cond_2
    invoke-virtual {p2}, Lb/a/am;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1010
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1012
    :cond_3
    invoke-virtual {p2}, Lb/a/am;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1013
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1015
    :cond_4
    invoke-virtual {p2}, Lb/a/am;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1016
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1018
    :cond_5
    invoke-virtual {p2}, Lb/a/am;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1019
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1021
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lb/a/bx;->a(Ljava/util/BitSet;I)V

    .line 1022
    invoke-virtual {p2}, Lb/a/am;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1023
    iget-object v0, p2, Lb/a/am;->e:Lb/a/m;

    invoke-virtual {v0, p1}, Lb/a/m;->b(Lb/a/br;)V

    .line 1025
    :cond_7
    invoke-virtual {p2}, Lb/a/am;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1027
    iget-object v0, p2, Lb/a/am;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 1028
    iget-object v0, p2, Lb/a/am;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ab;

    .line 1030
    invoke-virtual {v0, p1}, Lb/a/ab;->b(Lb/a/br;)V

    goto :goto_0

    .line 1034
    :cond_8
    invoke-virtual {p2}, Lb/a/am;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1036
    iget-object v0, p2, Lb/a/am;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lb/a/bx;->a(I)V

    .line 1037
    iget-object v0, p2, Lb/a/am;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/ak;

    .line 1039
    invoke-virtual {v0, p1}, Lb/a/ak;->b(Lb/a/br;)V

    goto :goto_1

    .line 1043
    :cond_9
    invoke-virtual {p2}, Lb/a/am;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1044
    iget-object v0, p2, Lb/a/am;->h:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->b(Lb/a/br;)V

    .line 1046
    :cond_a
    invoke-virtual {p2}, Lb/a/am;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1047
    iget-object v0, p2, Lb/a/am;->i:Lb/a/x;

    invoke-virtual {v0, p1}, Lb/a/x;->b(Lb/a/br;)V

    .line 1049
    :cond_b
    invoke-virtual {p2}, Lb/a/am;->i()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1050
    iget-object v0, p2, Lb/a/am;->j:Lb/a/n;

    invoke-virtual {v0, p1}, Lb/a/n;->b(Lb/a/br;)V

    .line 1052
    :cond_c
    invoke-virtual {p2}, Lb/a/am;->j()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1053
    iget-object v0, p2, Lb/a/am;->k:Lb/a/q;

    invoke-virtual {v0, p1}, Lb/a/q;->b(Lb/a/br;)V

    .line 1055
    :cond_d
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
    .line 990
    check-cast p2, Lb/a/am;

    invoke-virtual {p0, p1, p2}, Lb/a/am$c;->a(Lb/a/br;Lb/a/am;)V

    return-void
.end method

.method public b(Lb/a/br;Lb/a/am;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/bb;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 1059
    check-cast p1, Lb/a/bx;

    .line 1060
    new-instance v0, Lb/a/p;

    invoke-direct {v0}, Lb/a/p;-><init>()V

    iput-object v0, p2, Lb/a/am;->a:Lb/a/p;

    .line 1061
    iget-object v0, p2, Lb/a/am;->a:Lb/a/p;

    invoke-virtual {v0, p1}, Lb/a/p;->a(Lb/a/br;)V

    .line 1062
    invoke-virtual {p2, v6}, Lb/a/am;->a(Z)V

    .line 1063
    new-instance v0, Lb/a/o;

    invoke-direct {v0}, Lb/a/o;-><init>()V

    iput-object v0, p2, Lb/a/am;->b:Lb/a/o;

    .line 1064
    iget-object v0, p2, Lb/a/am;->b:Lb/a/o;

    invoke-virtual {v0, p1}, Lb/a/o;->a(Lb/a/br;)V

    .line 1065
    invoke-virtual {p2, v6}, Lb/a/am;->b(Z)V

    .line 1066
    new-instance v0, Lb/a/r;

    invoke-direct {v0}, Lb/a/r;-><init>()V

    iput-object v0, p2, Lb/a/am;->c:Lb/a/r;

    .line 1067
    iget-object v0, p2, Lb/a/am;->c:Lb/a/r;

    invoke-virtual {v0, p1}, Lb/a/r;->a(Lb/a/br;)V

    .line 1068
    invoke-virtual {p2, v6}, Lb/a/am;->c(Z)V

    .line 1069
    new-instance v0, Lb/a/ae;

    invoke-direct {v0}, Lb/a/ae;-><init>()V

    iput-object v0, p2, Lb/a/am;->d:Lb/a/ae;

    .line 1070
    iget-object v0, p2, Lb/a/am;->d:Lb/a/ae;

    invoke-virtual {v0, p1}, Lb/a/ae;->a(Lb/a/br;)V

    .line 1071
    invoke-virtual {p2, v6}, Lb/a/am;->d(Z)V

    .line 1072
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lb/a/bx;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 1073
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    new-instance v0, Lb/a/m;

    invoke-direct {v0}, Lb/a/m;-><init>()V

    iput-object v0, p2, Lb/a/am;->e:Lb/a/m;

    .line 1075
    iget-object v0, p2, Lb/a/am;->e:Lb/a/m;

    invoke-virtual {v0, p1}, Lb/a/m;->a(Lb/a/br;)V

    .line 1076
    invoke-virtual {p2, v6}, Lb/a/am;->e(Z)V

    .line 1078
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1080
    new-instance v3, Lb/a/bp;

    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lb/a/bp;-><init>(BI)V

    .line 1081
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lb/a/bp;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lb/a/am;->f:Ljava/util/List;

    move v0, v1

    .line 1082
    :goto_0
    iget v4, v3, Lb/a/bp;->b:I

    if-ge v0, v4, :cond_1

    .line 1085
    new-instance v4, Lb/a/ab;

    invoke-direct {v4}, Lb/a/ab;-><init>()V

    .line 1086
    invoke-virtual {v4, p1}, Lb/a/ab;->a(Lb/a/br;)V

    .line 1087
    iget-object v5, p2, Lb/a/am;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1090
    :cond_1
    invoke-virtual {p2, v6}, Lb/a/am;->f(Z)V

    .line 1092
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1094
    new-instance v0, Lb/a/bp;

    invoke-virtual {p1}, Lb/a/bx;->s()I

    move-result v3

    invoke-direct {v0, v7, v3}, Lb/a/bp;-><init>(BI)V

    .line 1095
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v0, Lb/a/bp;->b:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p2, Lb/a/am;->g:Ljava/util/List;

    .line 1096
    :goto_1
    iget v3, v0, Lb/a/bp;->b:I

    if-ge v1, v3, :cond_3

    .line 1099
    new-instance v3, Lb/a/ak;

    invoke-direct {v3}, Lb/a/ak;-><init>()V

    .line 1100
    invoke-virtual {v3, p1}, Lb/a/ak;->a(Lb/a/br;)V

    .line 1101
    iget-object v4, p2, Lb/a/am;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1104
    :cond_3
    invoke-virtual {p2, v6}, Lb/a/am;->g(Z)V

    .line 1106
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1107
    new-instance v0, Lb/a/z;

    invoke-direct {v0}, Lb/a/z;-><init>()V

    iput-object v0, p2, Lb/a/am;->h:Lb/a/z;

    .line 1108
    iget-object v0, p2, Lb/a/am;->h:Lb/a/z;

    invoke-virtual {v0, p1}, Lb/a/z;->a(Lb/a/br;)V

    .line 1109
    invoke-virtual {p2, v6}, Lb/a/am;->h(Z)V

    .line 1111
    :cond_5
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1112
    new-instance v0, Lb/a/x;

    invoke-direct {v0}, Lb/a/x;-><init>()V

    iput-object v0, p2, Lb/a/am;->i:Lb/a/x;

    .line 1113
    iget-object v0, p2, Lb/a/am;->i:Lb/a/x;

    invoke-virtual {v0, p1}, Lb/a/x;->a(Lb/a/br;)V

    .line 1114
    invoke-virtual {p2, v6}, Lb/a/am;->i(Z)V

    .line 1116
    :cond_6
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1117
    new-instance v0, Lb/a/n;

    invoke-direct {v0}, Lb/a/n;-><init>()V

    iput-object v0, p2, Lb/a/am;->j:Lb/a/n;

    .line 1118
    iget-object v0, p2, Lb/a/am;->j:Lb/a/n;

    invoke-virtual {v0, p1}, Lb/a/n;->a(Lb/a/br;)V

    .line 1119
    invoke-virtual {p2, v6}, Lb/a/am;->j(Z)V

    .line 1121
    :cond_7
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1122
    new-instance v0, Lb/a/q;

    invoke-direct {v0}, Lb/a/q;-><init>()V

    iput-object v0, p2, Lb/a/am;->k:Lb/a/q;

    .line 1123
    iget-object v0, p2, Lb/a/am;->k:Lb/a/q;

    invoke-virtual {v0, p1}, Lb/a/q;->a(Lb/a/br;)V

    .line 1124
    invoke-virtual {p2, v6}, Lb/a/am;->k(Z)V

    .line 1126
    :cond_8
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
    .line 990
    check-cast p2, Lb/a/am;

    invoke-virtual {p0, p1, p2}, Lb/a/am$c;->b(Lb/a/br;Lb/a/am;)V

    return-void
.end method
