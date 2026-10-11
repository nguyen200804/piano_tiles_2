.class public Lcom/cmplay/exitpopup/b;
.super Lcom/cmplay/internalpush/data/o;
.source "ExitGameParseCloudData.java"


# static fields
.field private static m:Lcom/cmplay/exitpopup/b;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/o;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmplay/exitpopup/b;->n:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmplay/exitpopup/b;->a:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cmplay/exitpopup/b;->b:Ljava/util/HashMap;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/exitpopup/b;->j:Landroid/content/Context;

    .line 38
    sput-object p1, Lcom/cmplay/internalpush/k;->a:Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/a/a/b;->a(Lcom/cmplay/internalpush/a/a/a;)V

    .line 40
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/exitpopup/b;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/cmplay/exitpopup/b;->m:Lcom/cmplay/exitpopup/b;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/cmplay/exitpopup/b;

    invoke-direct {v0, p0}, Lcom/cmplay/exitpopup/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/exitpopup/b;->m:Lcom/cmplay/exitpopup/b;

    .line 46
    :cond_0
    sget-object v0, Lcom/cmplay/exitpopup/b;->m:Lcom/cmplay/exitpopup/b;

    return-object v0
.end method

.method private c(Z)Z
    .locals 18

    .prologue
    .line 120
    const/4 v4, 0x0

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmplay/internalpush/data/c;

    .line 124
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v5

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->j()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 127
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/cmplay/internalpush/data/c;->e(I)V

    goto :goto_0

    .line 132
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cmplay/exitpopup/b;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_open_screen_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;J)J

    move-result-wide v6

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_hit_top_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v8, 0x0

    invoke-static {v2, v8, v9}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;J)J

    move-result-wide v8

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_last_shield_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v10, 0x0

    invoke-static {v2, v10, v11}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;J)J

    move-result-wide v10

    .line 138
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    .line 140
    const/4 v2, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v13, :cond_b

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmplay/internalpush/data/c;

    .line 142
    if-eqz v2, :cond_6

    .line 143
    const/4 v3, 0x0

    sput v3, Lcom/cmplay/internalpush/a/c;->a:I

    .line 145
    invoke-static {v2, v10, v11}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;J)Z

    move-result v3

    .line 146
    if-eqz v3, :cond_2

    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_2

    .line 148
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "last_last_shield_time"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    .line 152
    :cond_2
    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;Z)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmplay/exitpopup/b;->j:Landroid/content/Context;

    invoke-static {v14, v2}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v2, v6, v7, v8, v9}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->e(Lcom/cmplay/internalpush/data/c;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2, v10, v11}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;J)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    const/4 v3, 0x1

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cmplay/exitpopup/b;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v4, "internal_push"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  pro_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  filter rusult:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v5}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v3

    .line 192
    :goto_2
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExitGameParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   mInfoList.size():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    if-nez v13, :cond_a

    .line 196
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const-string v5, ""

    const-wide/16 v6, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 201
    :goto_3
    return v13

    .line 168
    :cond_3
    if-eqz v5, :cond_4

    .line 169
    const-string v3, "!"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_4
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v3, ":"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    sget v3, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    sget v3, Lcom/cmplay/internalpush/a/c;->a:I

    .line 178
    const/16 v14, 0xb

    if-ne v3, v14, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmplay/exitpopup/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmplay/exitpopup/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0xb

    .line 185
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cmplay/exitpopup/b;->n:Ljava/util/HashMap;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v3, "internal_push"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "name:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "  pro_id:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "  filter rusult:"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v14, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v14}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    .line 179
    :cond_7
    const/16 v3, 0x6e

    goto :goto_4

    .line 180
    :cond_8
    sget v14, Lcom/cmplay/internalpush/a/c;->a:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmplay/exitpopup/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmplay/exitpopup/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    const/16 v3, 0x8

    goto/16 :goto_4

    :cond_9
    const/16 v3, 0x50

    goto/16 :goto_4

    .line 198
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/exitpopup/b;->n:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_3

    :cond_b
    move v13, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Z)Lcom/cmplay/exitpopup/c;
    .locals 18

    .prologue
    .line 276
    const-string v2, "internal_push"

    const-string v3, "ExitGameParseCloudData.getInfoForShow()"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/exitpopup/b;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    const/4 v2, 0x0

    .line 300
    :goto_0
    return-object v2

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/exitpopup/b;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/cmplay/internalpush/data/c;

    .line 284
    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/cmplay/exitpopup/b;->a(JI)V

    .line 286
    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_hit_top_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    .line 293
    :goto_1
    if-eqz p1, :cond_1

    .line 294
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    const-string v8, ""

    invoke-static {}, Lcom/cmplay/exitpopup/a;->a()Lcom/cmplay/exitpopup/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cmplay/exitpopup/a;->b()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v11

    invoke-virtual/range {v2 .. v12}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 298
    :cond_1
    new-instance v2, Lcom/cmplay/exitpopup/c;

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v3

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->z()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->m()Ljava/lang/String;

    move-result-object v8

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

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->M()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v16 .. v16}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v16

    invoke-direct/range {v2 .. v17}, Lcom/cmplay/exitpopup/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 289
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_open_screen_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "section_quit_card"

    return-object v0
.end method

.method public a(ZZ)Z
    .locals 14

    .prologue
    .line 209
    const-string v0, "internal_push"

    const-string v1, "ExitGameParseCloudData.canShow()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/cmplay/exitpopup/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 214
    iget-object v0, p0, Lcom/cmplay/exitpopup/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 216
    const/4 v11, 0x0

    .line 217
    iget-object v0, p0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_open_screen_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;J)J

    move-result-wide v4

    .line 221
    iget-object v0, p0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    .line 222
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_5

    .line 223
    iget-object v0, p0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 224
    if-eqz v0, :cond_3

    .line 225
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "last_last_shield_time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/cmplay/util/aa;->b(Ljava/lang/String;J)J

    move-result-wide v8

    .line 226
    const/4 v7, 0x0

    sput v7, Lcom/cmplay/internalpush/a/c;->a:I

    .line 228
    invoke-static {v0, v8, v9}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;J)Z

    move-result v7

    .line 229
    if-eqz v7, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v10, v8, v12

    if-lez v10, :cond_0

    .line 231
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "last_last_shield_time"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcom/cmplay/util/aa;->a(Ljava/lang/String;J)V

    .line 234
    :cond_0
    invoke-static {v0, p1}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/cmplay/exitpopup/b;->j:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0, v2, v3, v4, v5}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->e(Lcom/cmplay/internalpush/data/c;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0, v8, v9}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;J)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    const/4 v1, 0x1

    .line 247
    iget-object v2, p0, Lcom/cmplay/exitpopup/b;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name:"

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

    move-result-object v0

    const-string v3, "  filter rusult:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v3}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 256
    :goto_1
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExitGameParseCloudData.canShow()  canShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mInfoList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-nez v0, :cond_1

    .line 259
    invoke-direct {p0, p1}, Lcom/cmplay/exitpopup/b;->c(Z)Z

    move-result v0

    .line 267
    :cond_1
    :goto_2
    return v0

    .line 251
    :cond_2
    const-string v7, "internal_push"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  pro_id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "  filter rusult:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v8, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v8}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 262
    :cond_4
    const-string v0, "internal_push"

    const-string v1, "ExitGameParseCloudData.canShow()  \u6ca1\u6709\u6570\u636e"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    move v0, v11

    goto :goto_2

    :cond_5
    move v0, v11

    goto/16 :goto_1
.end method

.method public b(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/cmplay/exitpopup/b;->a(Z)Lcom/cmplay/exitpopup/c;

    move-result-object v0

    .line 309
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/cmplay/exitpopup/c;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cmplay/exitpopup/b;->n:Ljava/util/HashMap;

    return-object v0
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
    .line 60
    iget-object v0, p0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 62
    iget-object v2, p0, Lcom/cmplay/exitpopup/b;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cmplay/internalpush/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/data/c;->l(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/cmplay/exitpopup/b;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cmplay/internalpush/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/data/c;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v1

    const-string v2, "local_version"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
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

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "exit_game"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_1
    invoke-super {p0}, Lcom/cmplay/internalpush/data/o;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "exit_game"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d()V
    .locals 4

    .prologue
    .line 79
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/a/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/cmplay/exitpopup/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/cmplay/exitpopup/b;->a:Ljava/util/HashMap;

    const-string v2, "not_data"

    invoke-static {}, Lcom/cmplay/util/NativeUtil;->isNetworkAvailable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAsynPreLoadImg ExitGame json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/cmplay/exitpopup/b;->a(Ljava/lang/String;)V

    .line 87
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsynPreLoadImg ExitGame mInfoList.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/cmplay/exitpopup/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 92
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/cmplay/exitpopup/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 99
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    new-instance v2, Lcom/cmplay/exitpopup/b$1;

    invoke-direct {v2, p0}, Lcom/cmplay/exitpopup/b$1;-><init>(Lcom/cmplay/exitpopup/b;)V

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/a/a/b;->a(Lcom/cmplay/base/util/c/b;)V

    .line 112
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/exitpopup/b;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/cmplay/internalpush/a/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cmplay/internalpush/a/a/b$a;)V

    .line 113
    return-void
.end method
