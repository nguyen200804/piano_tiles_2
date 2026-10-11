.class public Lcom/cmplay/internalpush/data/p;
.super Lcom/cmplay/internalpush/data/o;
.source "ResultPageParseCloudData.java"


# static fields
.field private static a:Lcom/cmplay/internalpush/data/p;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/o;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/p;->j:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/Context;)V

    .line 30
    sput-object p1, Lcom/cmplay/internalpush/k;->a:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/a/a/b;->a(Lcom/cmplay/internalpush/a/a/a;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/p;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/cmplay/internalpush/data/p;->a:Lcom/cmplay/internalpush/data/p;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/cmplay/internalpush/data/p;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/data/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/internalpush/data/p;->a:Lcom/cmplay/internalpush/data/p;

    .line 38
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/data/p;->a:Lcom/cmplay/internalpush/data/p;

    return-object v0
.end method

.method private c(Z)Z
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 104
    .line 107
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->j()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/data/c;->e(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/p;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_show_open_screen_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_show_hit_top_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    move v2, v1

    .line 123
    :goto_1
    if-ge v2, v8, :cond_6

    .line 124
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 125
    if-eqz v0, :cond_5

    .line 126
    sput v1, Lcom/cmplay/internalpush/a/c;->a:I

    .line 127
    invoke-static {v0, p1}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/cmplay/internalpush/data/p;->j:Landroid/content/Context;

    .line 128
    invoke-static {v9, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 129
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 130
    invoke-static {v0, v4, v5, v6, v7}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 131
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 132
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 133
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 134
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 136
    const/4 v1, 0x1

    .line 137
    iget-object v2, p0, Lcom/cmplay/internalpush/data/p;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v2, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResultPageParseCloudData.resetHaveRotationTimesAndCheckAgain()  name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  pro_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  filter rusult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v5}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   \u662f\u5426\u7206\u6b3e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 155
    :goto_2
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResultPageParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "   mInfoList.size():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/p;->l:Ljava/lang/String;

    .line 160
    if-nez v0, :cond_2

    .line 163
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/cmplay/internalpush/data/p;->a(I)V

    .line 166
    :cond_2
    return v0

    .line 141
    :cond_3
    if-eqz v2, :cond_4

    .line 142
    const-string v9, "!"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_4
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    sget v9, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    sget v9, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-virtual {p0, v0, v9}, Lcom/cmplay/internalpush/data/p;->a(Lcom/cmplay/internalpush/data/c;I)V

    .line 151
    const-string v9, "internal_push"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ResultPageParseCloudData.resetHaveRotationTimesAndCheckAgain()  name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  pro_id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  filter rusult:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v11}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "   \u662f\u5426\u7206\u6b3e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Z)Lcom/cmplay/internalpush/data/h;
    .locals 18

    .prologue
    .line 246
    const-string v2, "internal_push"

    const-string v3, "ResultPageParseCloudData.getInfoForShowNt()"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/p;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v3, 0x0

    .line 269
    :goto_0
    return-object v3

    .line 252
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/p;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/cmplay/internalpush/data/c;

    .line 254
    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/cmplay/internalpush/data/p;->a(JI)V

    .line 256
    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_hit_top_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;J)V

    .line 262
    :goto_1
    if-eqz p1, :cond_1

    .line 263
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    const-string v8, ""

    invoke-static {}, Lcom/cmplay/internalpush/p;->a()Lcom/cmplay/internalpush/p;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cmplay/internalpush/p;->b()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v11

    invoke-virtual/range {v2 .. v12}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 267
    :cond_1
    new-instance v3, Lcom/cmplay/internalpush/data/h;

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->z()Ljava/lang/String;

    move-result-object v8

    .line 268
    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->A()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->B()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->C()I

    move-result v11

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->D()I

    move-result v12

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->s()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v16

    invoke-direct/range {v3 .. v17}, Lcom/cmplay/internalpush/data/h;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 259
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_open_screen_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "section_result_card"

    return-object v0
.end method

.method public a(ZZ)Z
    .locals 14

    .prologue
    .line 181
    const-string v0, "internal_push"

    const-string v1, "ResultPageParseCloudData.canShow()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/p;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 188
    const/4 v11, 0x0

    .line 190
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_open_screen_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 194
    invoke-static {v4, v5}, Lcom/cmplay/internalpush/a/b;->a(J)Z

    move-result v6

    .line 195
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    .line 196
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_6

    .line 197
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 198
    if-eqz v0, :cond_3

    .line 200
    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 201
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/cmplay/internalpush/data/c;->r(I)V

    .line 202
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/cmplay/internalpush/data/c;->e(I)V

    .line 203
    const-string v8, "internal_push"

    const-string v9, "ResultPageParseCloudData.canShow()  \u4e0d\u662f\u76f8\u540c\u81ea\u7136\u5929\uff0c\u91cd\u7f6e\u7206\u6b3e\u5f53\u5929\u5c55\u793a\u6b21"

    invoke-static {v8, v9}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    const/4 v8, 0x0

    sput v8, Lcom/cmplay/internalpush/a/c;->a:I

    .line 207
    invoke-static {v0, p1}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/cmplay/internalpush/data/p;->j:Landroid/content/Context;

    .line 208
    invoke-static {v8, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 209
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 210
    invoke-static {v0, v2, v3, v4, v5}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 211
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 212
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 213
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 214
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 216
    const/4 v1, 0x1

    .line 217
    iget-object v2, p0, Lcom/cmplay/internalpush/data/p;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResultPageParseCloudData.canShow()  name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pro_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  filter rusult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v4}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   \u662f\u5426\u7206\u6b3e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 225
    :goto_1
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultPageParseCloudData.canShow()  canShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mInfoList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-nez v0, :cond_1

    .line 229
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/data/p;->c(Z)Z

    move-result v0

    .line 238
    :cond_1
    :goto_2
    return v0

    .line 221
    :cond_2
    const-string v8, "internal_push"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResultPageParseCloudData.canShow()  name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  pro_id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  filter rusult:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v10}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   \u662f\u5426\u7206\u6b3e:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 232
    :cond_4
    const-string v0, "internal_push"

    const-string v1, "ResultPageParseCloudData.canShow()  \u6ca1\u6709\u6570\u636e"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    if-eqz p1, :cond_5

    const/16 v2, 0x11

    .line 235
    :goto_3
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x2

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/cmplay/internalpush/p;->a()Lcom/cmplay/internalpush/p;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/p;->b()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    move v0, v11

    goto :goto_2

    .line 234
    :cond_5
    const/16 v2, 0x10

    goto :goto_3

    :cond_6
    move v0, v11

    goto/16 :goto_1
.end method

.method public b(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/data/p;->a(Z)Lcom/cmplay/internalpush/data/h;

    move-result-object v0

    .line 278
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/h;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 173
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-string v3, ""

    iget-object v6, p0, Lcom/cmplay/internalpush/data/p;->l:Ljava/lang/String;

    invoke-static {}, Lcom/cmplay/internalpush/p;->a()Lcom/cmplay/internalpush/p;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/p;->b()I

    move-result v7

    const/4 v8, 0x0

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 174
    return-void
.end method

.method public c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 49
    iget-object v2, p0, Lcom/cmplay/internalpush/data/p;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cmplay/internalpush/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/data/c;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v1

    const-string v2, "local_version"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cloudVersion ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 54
    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "result_page"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_1
    invoke-super {p0}, Lcom/cmplay/internalpush/data/o;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "result_page"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 64
    .line 65
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/a/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultPageParseCloudData.startAsynPreLoadImg result card json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u7ed3\u679c\u9875\u9b54\u65b9\u6570\u636e--------------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/cmplay/internalpush/data/p;->a(Ljava/lang/String;)V

    .line 71
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v7

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 73
    if-eqz v0, :cond_6

    .line 74
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->b(Lcom/cmplay/internalpush/data/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_2
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    const/4 v1, 0x1

    move v0, v1

    :goto_3
    move v1, v0

    .line 86
    goto :goto_1

    :cond_0
    move v0, v7

    .line 68
    goto :goto_0

    .line 78
    :cond_1
    const-string v3, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResultPageParseCloudData.startAsynPreLoadImg  ProID:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "  \u5df2\u7ecf\u8fc7\u671f\uff0c\u4e0d\u4e0b\u8f7d\u8d44\u6e90\u7d20\u6750"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/cmplay/internalpush/data/p;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    if-eqz v1, :cond_4

    const/16 v2, 0x15

    .line 91
    :goto_4
    if-eqz v1, :cond_5

    const-string v6, ""

    .line 92
    :goto_5
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x2

    const-string v3, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 96
    :cond_3
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/p;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v11, v2}, Lcom/cmplay/internalpush/a/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cmplay/internalpush/a/a/b$a;)V

    .line 97
    return-void

    .line 90
    :cond_4
    const/16 v2, 0x16

    goto :goto_4

    .line 91
    :cond_5
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_3
.end method
