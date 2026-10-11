.class public Lcom/cmplay/internalpush/data/b;
.super Lcom/cmplay/internalpush/data/o;
.source "FamilyParseCloudData.java"


# static fields
.field private static b:Lcom/cmplay/internalpush/data/b;


# instance fields
.field protected a:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/o;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/data/b;->a:Z

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/b;->j:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/Context;)V

    .line 33
    sput-object p1, Lcom/cmplay/internalpush/k;->a:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/a/a/b;->a(Lcom/cmplay/internalpush/a/a/a;)V

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/b;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/cmplay/internalpush/data/b;->b:Lcom/cmplay/internalpush/data/b;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/cmplay/internalpush/data/b;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/data/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/internalpush/data/b;->b:Lcom/cmplay/internalpush/data/b;

    .line 41
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/data/b;->b:Lcom/cmplay/internalpush/data/b;

    return-object v0
.end method

.method private b(Z)Z
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 114
    const-string v0, "internal_push"

    const-string v1, "FamilyParseCloudData.resetHaveRotationTimesAndCheckAgain()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v2

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->j()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 122
    invoke-virtual {v0, v3}, Lcom/cmplay/internalpush/data/c;->e(I)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/b;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_open_screen_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    move v2, v3

    move v1, v3

    .line 134
    :goto_1
    if-ge v2, v9, :cond_5

    .line 135
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 136
    if-eqz v0, :cond_4

    .line 137
    sput v3, Lcom/cmplay/internalpush/a/c;->a:I

    .line 138
    iget-object v10, p0, Lcom/cmplay/internalpush/data/b;->j:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 139
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 140
    invoke-static {v0, v4, v5, v6, v7}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 141
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 142
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 143
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 144
    const/4 v1, 0x1

    .line 145
    iget-object v10, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v10, "internal_push"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  pro_id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "  filter rusult:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v11, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v11}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 134
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 148
    :cond_2
    if-eqz v2, :cond_3

    .line 149
    const-string v10, "!"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_3
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    sget v10, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    sget v10, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-virtual {p0, v0, v10}, Lcom/cmplay/internalpush/data/b;->a(Lcom/cmplay/internalpush/data/c;I)V

    .line 158
    const-string v10, "internal_push"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  pro_id:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "  filter rusult:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v11, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v11}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    goto :goto_2

    .line 162
    :cond_5
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FamilyParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   mInfoList.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mAdCansShowList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  report:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/b;->l:Ljava/lang/String;

    .line 167
    if-nez v1, :cond_6

    .line 170
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/b;->a(I)V

    .line 173
    :cond_6
    return v1
.end method

.method private g()Z
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 246
    const-string v0, "internal_push"

    const-string v1, "FamilyParseCloudData.addHaveInstalledAppToShowList()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_open_screen_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v7}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 253
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    move v3, v2

    move v1, v2

    .line 254
    :goto_0
    if-ge v3, v8, :cond_2

    .line 255
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 256
    if-eqz v0, :cond_0

    .line 257
    sput v2, Lcom/cmplay/internalpush/a/c;->a:I

    .line 258
    iget-object v9, p0, Lcom/cmplay/internalpush/data/b;->j:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 259
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 260
    invoke-static {v0, v4, v5, v6, v7}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 261
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 262
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 263
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 264
    const/4 v1, 0x1

    .line 266
    iget-object v9, p0, Lcom/cmplay/internalpush/data/b;->j:Landroid/content/Context;

    invoke-static {v9}, Lcom/cmplay/internalpush/data/b;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/b;

    move-result-object v9

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v10

    const/4 v12, 0x2

    invoke-virtual {v9, v10, v11, v12}, Lcom/cmplay/internalpush/data/b;->a(JI)V

    .line 267
    iget-object v9, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const-string v9, "internal_push"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "name:"

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

    move-result-object v0

    const-string v10, "  filter rusult:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v10, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v10}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 254
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 273
    :cond_2
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FamilyParseCloudData.getHaveInstalledToShowList()  canShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   mAdCansShowList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "section_family_popup"

    return-object v0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 25

    .prologue
    .line 282
    const/4 v2, 0x0

    .line 283
    const-string v3, "internal_push"

    const-string v4, "FamilyParseCloudData.getInfoForShow  call canShow"

    invoke-static {v3, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/cmplay/internalpush/data/b;->a(ZZ)Z

    .line 287
    const-string v3, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FamilyParseCloudData.getInfoForShow  mAdCansShowList.size():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 290
    new-instance v23, Lorg/json/JSONArray;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONArray;-><init>()V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/cmplay/internalpush/data/c;

    .line 292
    if-eqz v22, :cond_0

    .line 293
    new-instance v3, Lcom/cmplay/internalpush/data/e;

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->z()Ljava/lang/String;

    move-result-object v8

    .line 294
    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->A()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->B()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->M()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->N()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->C()I

    move-result v13

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->D()I

    move-result v14

    .line 295
    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v15

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->s()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->w()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v17, 0x1

    :goto_1
    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->P()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->b()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v20

    invoke-direct/range {v3 .. v21}, Lcom/cmplay/internalpush/data/e;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZLjava/util/ArrayList;Ljava/lang/String;J)V

    .line 296
    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/e;->a()Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 298
    if-eqz p1, :cond_0

    .line 300
    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/cmplay/internalpush/data/b;->a(JI)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/b;->j:Landroid/content/Context;

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/internalpush/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v9, 0x2

    .line 304
    :goto_2
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    const-string v8, ""

    const/4 v10, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v11

    invoke-virtual/range {v2 .. v12}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 305
    const-string v2, "internal_push"

    const-string v3, "FamilyParseCloudData.getInfoForShow   \u4e0a\u62a5\u5c55\u793aPV"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 303
    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    .line 310
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cmplay/internalpush/data/b;->a:Z

    if-nez v2, :cond_4

    .line 311
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cmplay/internalpush/data/b;->a:Z

    .line 314
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    :cond_5
    const-string v3, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FamilyParseCloudData.getInfoForShow()  jsonData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-object v2
.end method

.method public a(ZZ)Z
    .locals 12

    .prologue
    .line 188
    const-string v0, "internal_push"

    const-string v1, "FamilyParseCloudData.canShow()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/data/b;->a:Z

    .line 191
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 194
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 196
    const/4 v11, 0x0

    .line 198
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_open_screen_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 202
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 203
    const/4 v0, 0x0

    move v2, v0

    move v1, v11

    :goto_0
    if-ge v2, v3, :cond_2

    .line 204
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 205
    if-eqz v0, :cond_1

    .line 207
    const/4 v8, 0x0

    sput v8, Lcom/cmplay/internalpush/a/c;->a:I

    .line 208
    iget-object v8, p0, Lcom/cmplay/internalpush/data/b;->j:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 209
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 210
    invoke-static {v0, v4, v5, v6, v7}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 211
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 212
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 213
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 214
    const/4 v1, 0x1

    .line 215
    iget-object v8, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v8, "internal_push"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name:"

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

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "  filter rusult:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v9, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v9}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 203
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_0
    const-string v8, "internal_push"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "name:"

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

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "  filter rusult:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v9, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v9}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_1

    .line 222
    :cond_2
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FamilyParseCloudData.canShow()  canShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mInfoList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mAdCansShowList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-nez v1, :cond_3

    .line 226
    invoke-direct {p0, p2}, Lcom/cmplay/internalpush/data/b;->b(Z)Z

    move-result v1

    .line 237
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/b;->g()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_8

    :cond_4
    const/4 v0, 0x1

    .line 239
    :goto_3
    return v0

    .line 229
    :cond_5
    const-string v0, "internal_push"

    const-string v1, "FamilyParseCloudData.canShow()  \u6ca1\u6709\u6570\u636e"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz p2, :cond_6

    .line 232
    if-eqz p1, :cond_7

    const/16 v2, 0x11

    .line 233
    :goto_4
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x7

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/cmplay/internalpush/g;->a()Lcom/cmplay/internalpush/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/g;->b()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    :cond_6
    move v1, v11

    goto :goto_2

    .line 232
    :cond_7
    const/16 v2, 0x10

    goto :goto_4

    .line 237
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public b()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 180
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x4

    const-string v3, ""

    iget-object v6, p0, Lcom/cmplay/internalpush/data/b;->l:Ljava/lang/String;

    invoke-static {}, Lcom/cmplay/internalpush/g;->a()Lcom/cmplay/internalpush/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/g;->b()I

    move-result v7

    const/4 v8, 0x0

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 181
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
    .line 50
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 52
    iget-object v2, p0, Lcom/cmplay/internalpush/data/b;->j:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cmplay/internalpush/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/data/c;->l(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 55
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v1

    const-string v2, "local_version"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
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

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "Family"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_1
    invoke-super {p0}, Lcom/cmplay/internalpush/data/o;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "Family"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public d()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 69
    iput-boolean v7, p0, Lcom/cmplay/internalpush/data/b;->a:Z

    .line 70
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/a/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FamilyParseCloudData.startAsynPreLoadImg Family card json:"

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

    const-string v2, "\u83b7\u53d6Family\u9b54\u65b9\u6570\u636e--------------------"

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
    invoke-virtual {p0, v1}, Lcom/cmplay/internalpush/data/b;->a(Ljava/lang/String;)V

    .line 81
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    const-string v8, "FamilyParseCloudData.startAsynPreLoadImg  ProID:"

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
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

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

    const/4 v1, 0x7

    const-string v3, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 106
    :cond_3
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v11, v2}, Lcom/cmplay/internalpush/a/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cmplay/internalpush/a/a/b$a;)V

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
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    const-string v0, "internal_push"

    const-string v3, "FamilyParseCloudData.canShowRedDot()"

    invoke-static {v0, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0, v2, v2}, Lcom/cmplay/internalpush/data/b;->a(ZZ)Z

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 336
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->u()I

    move-result v0

    if-ge v0, v1, :cond_1

    move v0, v1

    .line 342
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public f()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    .line 347
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    move v3, v2

    .line 350
    :goto_0
    if-ge v3, v4, :cond_1

    .line 351
    iget-object v0, p0, Lcom/cmplay/internalpush/data/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 352
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->R()I

    move-result v5

    if-ne v1, v5, :cond_0

    .line 354
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FamilyParseCloudData.isRedDotPriorityHigherThanSetting()   \u7ea2\u70b9\u4f18\u5148\u7ea7\u9ad8\u4e8e\u8bbe\u7f6e\u9875   id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 359
    :goto_1
    return v0

    .line 350
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
