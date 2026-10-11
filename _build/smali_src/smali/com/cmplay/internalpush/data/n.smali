.class public Lcom/cmplay/internalpush/data/n;
.super Lcom/cmplay/internalpush/data/o;
.source "OpenScreenParseCloudData.java"


# static fields
.field private static b:Lcom/cmplay/internalpush/data/n;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cmplay/internalpush/data/c;",
            ">;"
        }
    .end annotation
.end field

.field private m:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/cmplay/internalpush/data/o;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/n;->a:Ljava/util/List;

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/cmplay/internalpush/data/n;->m:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/data/n;->j:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Lcom/cmplay/internalpush/a/d;->a(Landroid/content/Context;)V

    .line 36
    sput-object p1, Lcom/cmplay/internalpush/k;->a:Landroid/content/Context;

    .line 37
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/a/a/b;->a(Lcom/cmplay/internalpush/a/a/a;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/cmplay/internalpush/data/n;)I
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/cmplay/internalpush/data/n;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cmplay/internalpush/data/n;->m:I

    return v0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/data/n;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/cmplay/internalpush/data/n;->m:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/n;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/cmplay/internalpush/data/n;->b:Lcom/cmplay/internalpush/data/n;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/cmplay/internalpush/data/n;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/data/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cmplay/internalpush/data/n;->b:Lcom/cmplay/internalpush/data/n;

    .line 44
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/data/n;->b:Lcom/cmplay/internalpush/data/n;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "innerpush_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/cmplay/internalpush/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Z)Z
    .locals 14

    .prologue
    .line 158
    const/4 v8, 0x0

    .line 160
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 162
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->j()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xe

    .line 165
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->T()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 166
    const/4 v1, 0x1

    .line 167
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()    \u4ecd\u7136\u6709\u56e0\u4e3a\u542f\u52a8\u6b21\u6570\u800c\u672a\u66fe\u5c55\u793a\u7684  id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 175
    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->x()I

    move-result v3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->j()I

    move-result v4

    if-lt v3, v4, :cond_2

    if-nez v1, :cond_2

    .line 178
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/cmplay/internalpush/data/c;->e(I)V

    .line 179
    const-string v3, "internal_push"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()    setHaveRotationTimes(0)  id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/n;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_open_screen_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    .line 191
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v10, :cond_c

    .line 192
    iget-object v1, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmplay/internalpush/data/c;

    .line 193
    if-eqz v1, :cond_b

    .line 194
    const/4 v6, 0x0

    sput v6, Lcom/cmplay/internalpush/a/c;->a:I

    .line 195
    invoke-static {v1, p1}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;Z)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 196
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 197
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cmplay/internalpush/n;->b()I

    move-result v6

    iget-boolean v7, p0, Lcom/cmplay/internalpush/data/n;->c:Z

    invoke-static/range {v1 .. v7}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJIZ)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 198
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/cmplay/internalpush/data/n;->j:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    .line 199
    :cond_5
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 200
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 201
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->V()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->e(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 202
    :cond_6
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->V()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_9

    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->h(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 203
    :cond_7
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->f(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 204
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 205
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->j(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 207
    const/4 v0, 0x1

    .line 208
    iget-object v2, p0, Lcom/cmplay/internalpush/data/n;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()  name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pro_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->h()J

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

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_2
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()  canShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   mInfoList.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/data/n;->l:Ljava/lang/String;

    .line 232
    if-nez v0, :cond_8

    .line 235
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cmplay/internalpush/data/n;->a(I)V

    .line 238
    :cond_8
    return v0

    .line 212
    :cond_9
    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-virtual {v1, v6}, Lcom/cmplay/internalpush/data/c;->o(I)V

    .line 213
    if-eqz v0, :cond_a

    .line 214
    const-string v6, "!"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_a
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v6, ":"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-virtual {p0, v1, v6}, Lcom/cmplay/internalpush/data/n;->a(Lcom/cmplay/internalpush/data/c;I)V

    .line 223
    const-string v6, "internal_push"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OpenScreenParseCloudData.resetHaveRotationTimesAndCheckAgain()  name:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "  pro_id:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "  filter rusult:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v11, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v11}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "   \u662f\u5426\u7206\u6b3e:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
    move v0, v8

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Z)Lcom/cmplay/internalpush/data/g;
    .locals 30

    .prologue
    .line 323
    const-string v2, "internal_push"

    const-string v3, "OpenScreenParseCloudData.getInfoForShowNt()"

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/n;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    const/4 v3, 0x0

    .line 349
    :goto_0
    return-object v3

    .line 328
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cmplay/internalpush/data/n;->c:Z

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cmplay/internalpush/data/n;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Lcom/cmplay/internalpush/data/c;

    .line 333
    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/cmplay/internalpush/data/n;->a(JI)V

    .line 335
    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_hit_top_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;J)V

    .line 341
    :goto_1
    if-eqz p1, :cond_1

    .line 342
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v6

    const-string v8, ""

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v9

    invoke-virtual {v9}, Lcom/cmplay/internalpush/n;->b()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v11

    invoke-virtual/range {v2 .. v12}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 346
    :cond_1
    new-instance v3, Lcom/cmplay/internalpush/data/g;

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v4

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->z()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->A()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->B()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->m()Ljava/lang/String;

    move-result-object v11

    .line 347
    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->p()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->q()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v14

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->s()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->O()D

    move-result-wide v16

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->P()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->Q()I

    move-result v19

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->b()Ljava/lang/String;

    move-result-object v20

    .line 348
    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->U()Z

    move-result v21

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->G()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->H()I

    move-result v23

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->I()I

    move-result v24

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->V()I

    move-result v25

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->W()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->a()Z

    move-result v27

    invoke-virtual/range {v28 .. v28}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v28

    invoke-direct/range {v3 .. v29}, Lcom/cmplay/internalpush/data/g;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DLjava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;IIILjava/lang/String;ZJ)V

    goto/16 :goto_0

    .line 338
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_open_screen_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/cmplay/internalpush/data/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->b(Ljava/lang/String;J)V

    goto/16 :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "open_screen_scene"

    return-object v0
.end method

.method public a(ZZ)Z
    .locals 14

    .prologue
    .line 254
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenScreenParseCloudData.canShow()   isNewPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 258
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 261
    const/4 v11, 0x0

    .line 263
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_open_screen_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_show_hit_top_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 267
    invoke-static {v4, v5}, Lcom/cmplay/internalpush/a/b;->a(J)Z

    move-result v8

    .line 268
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v9

    .line 269
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_a

    .line 270
    iget-object v1, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cmplay/internalpush/data/c;

    .line 271
    if-eqz v1, :cond_7

    .line 273
    if-nez v8, :cond_0

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/cmplay/internalpush/data/c;->r(I)V

    .line 275
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/cmplay/internalpush/data/c;->e(I)V

    .line 276
    const-string v6, "internal_push"

    const-string v7, "OpenScreenParseCloudData.canShow()  \u4e0d\u662f\u76f8\u540c\u81ea\u7136\u5929\uff0c\u91cd\u7f6e\u7206\u6b3e\u5f53\u5929\u5c55\u793a\u6b21"

    invoke-static {v6, v7}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    const/4 v6, 0x0

    sput v6, Lcom/cmplay/internalpush/a/c;->a:I

    .line 280
    invoke-static {v1, p1}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 281
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 282
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cmplay/internalpush/n;->b()I

    move-result v6

    iget-boolean v7, p0, Lcom/cmplay/internalpush/data/n;->c:Z

    invoke-static/range {v1 .. v7}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;JJIZ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 283
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/cmplay/internalpush/data/n;->j:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 284
    :cond_2
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->c(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 285
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->d(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 286
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->V()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->e(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 287
    :cond_3
    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->V()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->h(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->g(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 288
    :cond_4
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->f(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 289
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->k(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 290
    invoke-static {v1}, Lcom/cmplay/internalpush/a/c;->j(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 292
    const/4 v0, 0x1

    .line 293
    iget-object v2, p0, Lcom/cmplay/internalpush/data/n;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenScreenParseCloudData.canShow()  name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  pro_id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->h()J

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

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_1
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenScreenParseCloudData.canShow()  canShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mInfoList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    if-nez v0, :cond_5

    .line 306
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/data/n;->c(Z)Z

    move-result v0

    .line 315
    :cond_5
    :goto_2
    return v0

    .line 297
    :cond_6
    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-virtual {v1, v6}, Lcom/cmplay/internalpush/data/c;->o(I)V

    .line 298
    const-string v6, "internal_push"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OpenScreenParseCloudData.canShow()  name:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "  pro_id:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "  filter rusult:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v10, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v10}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "   \u662f\u5426\u7206\u6b3e:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/c;->ac()Z

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 309
    :cond_8
    const-string v0, "internal_push"

    const-string v1, "OpenScreenParseCloudData.canShow()  \u6ca1\u6709\u6570\u636e"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-eqz p1, :cond_9

    const/16 v2, 0x11

    .line 312
    :goto_3
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x1

    const-string v3, ""

    const-wide/16 v4, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    move v0, v11

    goto :goto_2

    .line 311
    :cond_9
    const/16 v2, 0x10

    goto :goto_3

    :cond_a
    move v0, v11

    goto/16 :goto_1
.end method

.method public b(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/data/n;->a(Z)Lcom/cmplay/internalpush/data/g;

    move-result-object v0

    .line 358
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 11

    .prologue
    const-wide/16 v4, 0x0

    .line 245
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const-string v3, ""

    iget-object v6, p0, Lcom/cmplay/internalpush/data/n;->l:Ljava/lang/String;

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    const/4 v8, 0x0

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 246
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
    .line 69
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcSpHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/ipc/IpcSpHelper;->sp_getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 70
    invoke-static {}, Lcom/ijinshan/cloudconfig/b/a;->a()Lcom/ijinshan/cloudconfig/b/a;

    move-result-object v1

    const-string v2, "local_version"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/ijinshan/cloudconfig/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
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

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "open_screen"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    invoke-super {p0}, Lcom/cmplay/internalpush/data/o;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "open_screen"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cmplay/internalpush/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 14

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 82
    .line 83
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/cmplay/internalpush/a/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v0, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenScreenParseCloudData.startAsynPreLoadImg openScreen \u5185\u63a8 json:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5f00\u5c4f\u9b54\u65b9\u6570\u636e--------------------"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v2}, Lcom/cmplay/internalpush/data/n;->a(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-static {}, Lcom/cmplay/base/util/i;->b()I

    move-result v2

    const-string v3, "open_screen_scene_rs_game_fuction"

    invoke-virtual {v0, v2, v3}, Lcom/cmplay/internalpush/a/a/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OpenScreenParseCloudData.startAsynPreLoadImg openScreen RS \u529f\u80fd\u5f00\u5c4f rsJson:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/data/n;->b(Ljava/lang/String;)V

    .line 93
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v7

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 95
    if-eqz v0, :cond_6

    .line 96
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->b(Lcom/cmplay/internalpush/data/c;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_2
    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    move v3, v0

    .line 111
    goto :goto_1

    :cond_0
    move v0, v7

    .line 85
    goto :goto_0

    .line 103
    :cond_1
    const-string v6, "internal_push"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OpenScreenParseCloudData.startAsynPreLoadImg   ProID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  \u5df2\u7ecf\u8fc7\u671f\uff0c\u4e0d\u4e0b\u8f7d\u8d44\u6e90\u7d20\u6750"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    if-eqz v3, :cond_4

    const/16 v2, 0x15

    .line 116
    :goto_4
    if-eqz v3, :cond_5

    const-string v6, ""

    .line 117
    :goto_5
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const-string v3, ""

    move v8, v7

    move-wide v9, v4

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 121
    :cond_3
    invoke-static {}, Lcom/cmplay/internalpush/a/a/b;->a()Lcom/cmplay/internalpush/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmplay/internalpush/data/n$1;

    invoke-direct {v2, p0}, Lcom/cmplay/internalpush/data/n$1;-><init>(Lcom/cmplay/internalpush/data/n;)V

    invoke-virtual {v0, v1, v11, v2}, Lcom/cmplay/internalpush/a/a/b;->a(Ljava/lang/String;Ljava/util/ArrayList;Lcom/cmplay/internalpush/a/a/b$a;)V

    .line 148
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->g()Z

    .line 150
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->f()V

    .line 151
    return-void

    .line 115
    :cond_4
    const/16 v2, 0x16

    goto :goto_4

    .line 116
    :cond_5
    invoke-static {}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->getInstance()Lcom/cmplay/internalpush/ipc/IpcCloudHelper;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/cmplay/internalpush/ipc/IpcCloudHelper;->innpush_getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_6
    move v0, v3

    goto :goto_3
.end method

.method public e()Lcom/cmplay/internalpush/data/c;
    .locals 4

    .prologue
    .line 372
    const/4 v1, 0x0

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cmplay/internalpush/data/n;->a:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 375
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->Y()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->h(Lcom/cmplay/internalpush/data/c;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    move-object v1, v0

    .line 378
    goto :goto_0

    .line 379
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public f()V
    .locals 13

    .prologue
    .line 383
    const-string v0, "internal_push"

    const-string v1, "OpenScreenParseCloudData.getNextVideo()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget v0, p0, Lcom/cmplay/internalpush/data/n;->m:I

    iget-object v1, p0, Lcom/cmplay/internalpush/data/n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 386
    const-string v0, "internal_push"

    const-string v1, "OpenScreenParseCloudData.getNextVideo()  \u5f00\u5c4f \u5faa\u73af\u904d\u5386\u4e86\u4e00\u904d\uff0c resetDownloadFailTag  \u505c\u6b62\u4e0b\u4e00\u4e2a\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->l()V

    .line 475
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/internalpush/data/n;->e()Lcom/cmplay/internalpush/data/c;

    move-result-object v12

    .line 392
    if-eqz v12, :cond_1

    .line 393
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenScreenParseCloudData.getNextVideo()  \u5f00\u5c4f\u89c6\u9891 \u5f00\u59cb\u4e0b\u8f7d pro_id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/cmplay/internalpush/data/c;->e(Z)V

    .line 395
    invoke-static {}, Lcom/cmplay/internalpush/video/a/a;->a()Lcom/cmplay/internalpush/video/a/a;

    move-result-object v0

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v1

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v4

    .line 396
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->F()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cmplay/internalpush/data/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->l()Ljava/lang/String;

    move-result-object v6

    .line 398
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->y()Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-virtual {v12}, Lcom/cmplay/internalpush/data/c;->i()J

    move-result-wide v8

    const/4 v10, 0x0

    new-instance v11, Lcom/cmplay/internalpush/data/n$2;

    invoke-direct {v11, p0, v12}, Lcom/cmplay/internalpush/data/n$2;-><init>(Lcom/cmplay/internalpush/data/n;Lcom/cmplay/internalpush/data/c;)V

    .line 395
    invoke-virtual/range {v0 .. v11}, Lcom/cmplay/internalpush/video/a/a;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/cmplay/internalpush/video/b/a;Lcom/cmplay/internalpush/video/a/b$a;)V

    goto :goto_0

    .line 473
    :cond_1
    const-string v0, "internal_push"

    const-string v1, "OpenScreenParseCloudData.getNextVideo()  \u5f00\u5c4f\u89c6\u9891  info=null  \u6ca1\u6709\u9700\u8981\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g()Z
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v2, 0x0

    .line 482
    const-string v0, "internal_push"

    const-string v1, "OpenScreenParseCloudData.getVideoCanShowList()  \u8fc7\u6ee4\u627e\u51fa\u9700\u8981\u4e0b\u8f7d\u89c6\u9891\u7684"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 489
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    move v3, v2

    move v1, v2

    .line 490
    :goto_0
    if-ge v3, v4, :cond_4

    .line 491
    iget-object v0, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/data/c;

    .line 492
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->V()I

    move-result v5

    if-ne v10, v5, :cond_3

    .line 493
    sput v2, Lcom/cmplay/internalpush/a/c;->a:I

    .line 494
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v5

    if-eq v5, v11, :cond_0

    iget-object v5, p0, Lcom/cmplay/internalpush/data/n;->j:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/cmplay/internalpush/a/c;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v5

    if-eq v5, v11, :cond_1

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->t()I

    move-result v5

    if-ne v5, v10, :cond_2

    .line 495
    :cond_1
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->a(Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 496
    invoke-static {v0}, Lcom/cmplay/internalpush/a/c;->i(Lcom/cmplay/internalpush/data/c;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 498
    const/4 v1, 0x1

    .line 499
    iget-object v5, p0, Lcom/cmplay/internalpush/data/n;->a:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    const-string v5, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OpenScreenParseCloudData.getVideoCanShowList()  name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  pro_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  filter rusult:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v6}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 490
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 502
    :cond_2
    const-string v5, "internal_push"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OpenScreenParseCloudData.getVideoCanShowList()  name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  pro_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/c;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "  filter rusult:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v6, Lcom/cmplay/internalpush/a/c;->a:I

    invoke-static {v6}, Lcom/cmplay/internalpush/a/c;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    goto :goto_1

    .line 506
    :cond_4
    const-string v0, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenScreenParseCloudData.getVideoCanShowList()  haveDataDl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mInfoList.size()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mAdVideoCanShowList.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cmplay/internalpush/data/n;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_2
    return v1

    :cond_5
    move v1, v2

    goto :goto_2
.end method
