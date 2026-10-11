.class public Lcom/cmplay/internalpush/data/q;
.super Lcom/cmplay/internalpush/data/o;
.source "SettingParseCloudData.java"


# static fields
.field private static b:Lcom/cmplay/internalpush/data/q;


# instance fields
.field protected a:Z

.field private m:Lcom/cmplay/internalpush/data/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/o;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/data/q;->a:Z

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/q;->j:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/Context;)V

    .line 32
    sput-object p1, Lcom/cmplay/internalpush/k;->a:Landroid/content/Context;

    .line 33
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/a/a/b;->a(Lcom/cmplay/internalpush/a/a/a;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/q;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/cmplay/internalpush/data/q;->b:Lcom/cmplay/internalpush/data/q;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/cmplay/internalpush/data/q;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/data/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/internalpush/data/q;->b:Lcom/cmplay/internalpush/data/q;

    .line 40
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/data/q;->b:Lcom/cmplay/internalpush/data/q;

    return-object v0
.end method

.method private c(Z)Z
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 114
    .line 117
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->j()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/data/c;->e(I)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/q;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_show_open_screen_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_show_hit_top_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    move v2, v1

    .line 133
    :goto_1
    if-ge v2, v8, :cond_6

    .line 134
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 135
    if-eqz v0, :cond_5

    .line 136
    sput v1, Lcom/cmplay/internalpush/a/c;->a:I

    .line 137
    iget-object v9, p0, Lcom/cmplay/internalpush/data/q;->j:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 138
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 139
    invoke-static {v0, v4, v5, v6, v7}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 140
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 141
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 142
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 143
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 145
    const/4 v1, 0x1

    .line 146
    iget-object v2, p0, Lcom/cmplay/internalpush/data/q;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    const-string v2, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingParseCloudData.canShow()  name:"

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

    .line 164
    :goto_2
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "   mInfoList.size():"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/q;->l:Ljava/lang/String;

    .line 169
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 172
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/cmplay/internalpush/data/q;->a(I)V

    .line 175
    :cond_2
    return v0

    .line 150
    :cond_3
    if-eqz v2, :cond_4

    .line 151
    const-string v9, "!"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_4
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v9, ":"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    sget v9, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    sget v9, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-virtual {p0, v0, v9}, Lcom/cmplay/internalpush/data/q;->a(Lcom/cmplay/internalpush/data/c;I)V

    .line 160
    const-string v9, "internal_push"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SettingParseCloudData.canShow()  name:"

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

    .line 133
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Z)Lcom/cmplay/internalpush/data/i;
    .locals 20

    .prologue
    .line 259
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingParseCloudData.getInfoForShowNt()  reportShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v3, 0x0

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->j:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-static {v2, v4}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    new-instance v3, Lcom/cmplay/internalpush/data/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->z()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    .line 265
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->A()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->B()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->M()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->C()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->D()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    .line 266
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->s()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->w()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->b()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v18

    invoke-direct/range {v3 .. v19}, Lcom/cmplay/internalpush/data/i;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;J)V

    .line 267
    const-string v2, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingParseCloudData.getInfoForShowNt()    \u4e0a\u4e00\u4e2a\u5c55\u793a      id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v5}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    .line 280
    :goto_1
    if-eqz v13, :cond_0

    .line 282
    if-eqz p1, :cond_0

    .line 284
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingParseCloudData.getInfoForShowNt()  updateShowedStatus      mCurInfoHaveShowedOnce:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cmplay/internalpush/data/q;->a:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v13}, Lcom/cmplay/internalpush/data/i;->d()J

    move-result-wide v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/cmplay/internalpush/data/q;->a(JI)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_hit_top_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;J)V

    .line 294
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cmplay/internalpush/data/q;->a:Z

    if-nez v2, :cond_0

    .line 296
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v13}, Lcom/cmplay/internalpush/data/i;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Lcom/cmplay/internalpush/data/i;->d()J

    move-result-wide v6

    const-string v8, ""

    invoke-static {}, Lcom/cmplay/internalpush/s;->a()Lcom/cmplay/internalpush/s;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cmplay/internalpush/s;->b()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v13}, Lcom/cmplay/internalpush/data/i;->m()J

    move-result-wide v11

    invoke-virtual/range {v2 .. v12}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 297
    const-string v2, "internal_push"

    const-string v3, "SettingParseCloudData.getInfoForShowNt()  \u4e0a\u62a5\u5c55\u793aPV"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cmplay/internalpush/data/q;->a:Z

    .line 303
    :cond_0
    return-object v13

    .line 266
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 269
    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/cmplay/internalpush/data/q;->a(ZZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmplay/internalpush/data/c;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    .line 274
    new-instance v3, Lcom/cmplay/internalpush/data/i;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->z()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    .line 275
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->A()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->B()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->M()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->C()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->D()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    .line 276
    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->s()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->w()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v16, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->b()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v18

    invoke-direct/range {v3 .. v19}, Lcom/cmplay/internalpush/data/i;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZLjava/lang/String;J)V

    .line 277
    const-string v2, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingParseCloudData.getInfoForShowNt()    \u65b0\u7684\u5c55\u793a       id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v5}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v13, v3

    goto/16 :goto_1

    .line 276
    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    .line 291
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_open_screen_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_5
    move-object v13, v3

    goto/16 :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "section_setting_card"

    return-object v0
.end method

.method public a(ZZ)Z
    .locals 16

    .prologue
    .line 190
    const-string v2, "internal_push"

    const-string v3, "SettingParseCloudData.canShow()"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    .line 193
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cmplay/internalpush/data/q;->a:Z

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/q;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 199
    const/4 v13, 0x0

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_open_screen_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_hit_top_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 205
    invoke-static {v6, v7}, Lcom/cmplay/internalpush/a/b;->a(J)Z

    move-result v8

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    .line 207
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v9, :cond_7

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cmplay/internalpush/data/c;

    .line 209
    if-eqz v2, :cond_4

    .line 211
    if-nez v8, :cond_0

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 212
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/cmplay/internalpush/data/c;->r(I)V

    .line 213
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/cmplay/internalpush/data/c;->e(I)V

    .line 214
    const-string v10, "internal_push"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SettingParseCloudData.canShow()  \u4e0d\u662f\u76f8\u540c\u81ea\u7136\u5929\uff0c\u91cd\u7f6e\u7206\u6b3e\u5f53\u5929\u5c55\u793a\u6b21   lastShowHitTopTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    const/4 v10, 0x0

    sput v10, Lcom/cmplay/internalpush/a/c;->a:I

    .line 218
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cmplay/internalpush/data/q;->j:Landroid/content/Context;

    invoke-static {v10, v2}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 219
    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 220
    invoke-static {v2, v4, v5, v6, v7}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 221
    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 222
    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 223
    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 224
    invoke-static {v2}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 226
    const/4 v3, 0x1

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cmplay/internalpush/data/q;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v4, "internal_push"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingParseCloudData.canShow()  name:"

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

    move-result-object v5

    const-string v6, "  filter rusult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v6}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   \u662f\u5426\u7206\u6b3e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 235
    :goto_1
    const-string v3, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SettingParseCloudData.canShow()  canShow:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mInfoList.size()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-nez v2, :cond_1

    .line 239
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/cmplay/internalpush/data/q;->c(Z)Z

    move-result v2

    :cond_1
    move v13, v2

    .line 250
    :cond_2
    :goto_2
    return v13

    .line 231
    :cond_3
    const-string v10, "internal_push"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SettingParseCloudData.canShow()  name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  pro_id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  filter rusult:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v12}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   \u662f\u5426\u7206\u6b3e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0

    .line 242
    :cond_5
    const-string v2, "internal_push"

    const-string v3, "SettingParseCloudData.canShow()  \u6ca1\u6709\u6570\u636e"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eqz p2, :cond_2

    .line 245
    if-eqz p1, :cond_6

    const/16 v4, 0x11

    .line 246
    :goto_3
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v2

    const/4 v3, 0x3

    const-string v5, ""

    const-wide/16 v6, 0x0

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/cmplay/internalpush/s;->a()Lcom/cmplay/internalpush/s;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cmplay/internalpush/s;->b()I

    move-result v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_2

    .line 245
    :cond_6
    const/16 v4, 0x10

    goto :goto_3

    :cond_7
    move v2, v13

    goto/16 :goto_1
.end method

.method public b(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/data/q;->a(Z)Lcom/cmplay/internalpush/data/i;

    move-result-object v0

    .line 312
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/i;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 182
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const-string v3, ""

    iget-object v6, p0, Lcom/cmplay/internalpush/data/q;->l:Ljava/lang/String;

    invoke-static {}, Lcom/cmplay/internalpush/s;->a()Lcom/cmplay/internalpush/s;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/s;->b()I

    move-result v7

    const/4 v8, 0x0

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 183
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
    .line 49
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 51
    iget-object v2, p0, Lcom/cmplay/internalpush/data/q;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cmplay/internalpush/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/data/c;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v1

    const-string v2, "local_version"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
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

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "setting"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_1
    invoke-super {p0}, Lcom/cmplay/internalpush/data/o;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0

    .line 59
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "setting"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d()V
    .locals 13

    .prologue
    const-wide/16 v4, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 68
    iput-object v12, p0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    .line 69
    iput-boolean v7, p0, Lcom/cmplay/internalpush/data/q;->a:Z

    .line 70
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/a/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingParseCloudData.startAsynPreLoadImg setting card json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6seting\u9875\u9b54\u65b9\u6570\u636e--------------------"

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

    .line 79
    invoke-virtual {p0, v1}, Lcom/cmplay/internalpush/data/q;->a(Ljava/lang/String;)V

    .line 81
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    .line 83
    if-eqz v0, :cond_6

    .line 84
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->b(Lcom/cmplay/internalpush/data/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_2
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    const/4 v1, 0x1

    move v0, v1

    :goto_3
    move v1, v0

    .line 96
    goto :goto_1

    :cond_0
    move v0, v7

    .line 78
    goto :goto_0

    .line 88
    :cond_1
    const-string v3, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SettingParseCloudData.startAsynPreLoadImg ProID:"

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

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 100
    if-eqz v1, :cond_4

    const/16 v2, 0x15

    .line 101
    :goto_4
    if-eqz v1, :cond_5

    const-string v6, ""

    .line 102
    :goto_5
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x3

    const-string v3, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 106
    :cond_3
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v12}, Lcom/cmplay/internalpush/a/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cmplay/internalpush/a/a/b$a;)V

    .line 107
    return-void

    .line 100
    :cond_4
    const/16 v2, 0x16

    goto :goto_4

    .line 101
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

.method public e()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    .line 322
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-static {v0, v3}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->u()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 324
    :goto_0
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingParseCloudData.canShowRedDot()    \u4e0a\u4e00\u4e2a\u5c55\u793a      id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_1
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingParseCloudData.canShowRedDot()   canShowRedDot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return v0

    :cond_0
    move v0, v2

    .line 323
    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/cmplay/internalpush/data/q;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    iput-object v0, p0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    .line 329
    iget-object v0, p0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->u()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 330
    :goto_2
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingParseCloudData.canShowRedDot()    \u65b0\u7684\u5c55\u793a      id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/q;->m:Lcom/cmplay/internalpush/data/c;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 329
    goto :goto_2

    :cond_3
    move v0, v2

    .line 333
    goto :goto_1
.end method
