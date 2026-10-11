.class public Lcom/mnt/impl/i/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/mnt/impl/i/b/a;


# instance fields
.field private c:Lcom/mnt/impl/i/b/c;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mnt/impl/e;->bz:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/mnt/impl/e;->bA:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/i/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/i/b/a;->d:Landroid/content/Context;

    .line 50
    new-instance v0, Lcom/mnt/impl/i/b/c;

    invoke-direct {v0, p1}, Lcom/mnt/impl/i/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mnt/impl/i/b/a;->c:Lcom/mnt/impl/i/b/c;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/mnt/impl/i/b/a;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/mnt/impl/i/b/a;->b:Lcom/mnt/impl/i/b/a;

    if-nez v0, :cond_1

    .line 55
    const-class v1, Lcom/mnt/impl/i/b/a;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/mnt/impl/i/b/a;->b:Lcom/mnt/impl/i/b/a;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/mnt/impl/i/b/a;

    invoke-direct {v0, p0}, Lcom/mnt/impl/i/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mnt/impl/i/b/a;->b:Lcom/mnt/impl/i/b/a;

    .line 59
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/mnt/impl/i/b/a;->b:Lcom/mnt/impl/i/b/a;

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/mnt/impl/i/b/a;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mnt/impl/i/b/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 146
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/mnt/impl/i/b/a;->c:Lcom/mnt/impl/i/b/c;

    invoke-virtual {v0}, Lcom/mnt/impl/i/b/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 151
    sget-object v1, Lcom/mnt/impl/i/b/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/mnt/impl/e;->bG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 156
    :goto_0
    if-eqz v3, :cond_23

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_23

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3258
    new-instance v2, Lcom/mnt/impl/i/b/d;

    invoke-direct {v2}, Lcom/mnt/impl/i/b/d;-><init>()V

    .line 3259
    sget-object v1, Lcom/mnt/impl/i/b/c;->z:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3289
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3260
    sget-object v1, Lcom/mnt/impl/i/b/c;->b:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4103
    const-string v1, ""

    .line 4105
    :cond_0
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->a:Ljava/lang/String;

    .line 3261
    sget-object v1, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4114
    const-string v1, ""

    .line 4116
    :cond_1
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->b:Ljava/lang/String;

    .line 3262
    sget-object v1, Lcom/mnt/impl/i/b/c;->d:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4125
    const-string v1, ""

    .line 4127
    :cond_2
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->c:Ljava/lang/String;

    .line 3263
    sget-object v1, Lcom/mnt/impl/i/b/c;->e:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4136
    const-string v1, ""

    .line 4138
    :cond_3
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->d:Ljava/lang/String;

    .line 3264
    sget-object v1, Lcom/mnt/impl/i/b/c;->f:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4146
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4147
    const-string v1, ""

    .line 4149
    :cond_4
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->e:Ljava/lang/String;

    .line 3265
    sget-object v1, Lcom/mnt/impl/i/b/c;->g:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4158
    const-string v1, ""

    .line 4160
    :cond_5
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->f:Ljava/lang/String;

    .line 3266
    sget-object v1, Lcom/mnt/impl/i/b/c;->h:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4168
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4169
    const-string v1, ""

    .line 4171
    :cond_6
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->g:Ljava/lang/String;

    .line 3267
    sget-object v1, Lcom/mnt/impl/i/b/c;->i:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4180
    const-string v1, ""

    .line 4182
    :cond_7
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->h:Ljava/lang/String;

    .line 3268
    sget-object v1, Lcom/mnt/impl/i/b/c;->j:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 4191
    sget-object v1, Lcom/mnt/impl/e;->ba:Ljava/lang/String;

    .line 4193
    :cond_8
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->i:Ljava/lang/String;

    .line 3269
    sget-object v1, Lcom/mnt/impl/i/b/c;->k:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4202
    const-string v1, ""

    .line 4204
    :cond_9
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->j:Ljava/lang/String;

    .line 3270
    sget-object v1, Lcom/mnt/impl/i/b/c;->l:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4212
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4213
    const-string v1, ""

    .line 4215
    :cond_a
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->k:Ljava/lang/String;

    .line 3271
    sget-object v1, Lcom/mnt/impl/i/b/c;->m:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4223
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4224
    const-string v1, ""

    .line 4226
    :cond_b
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->l:Ljava/lang/String;

    .line 3272
    sget-object v1, Lcom/mnt/impl/i/b/c;->n:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4234
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4235
    sget-object v1, Lcom/mnt/impl/e;->bb:Ljava/lang/String;

    .line 4237
    :cond_c
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->m:Ljava/lang/String;

    .line 3273
    sget-object v1, Lcom/mnt/impl/i/b/c;->o:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4245
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 4246
    const-string v1, ""

    .line 4248
    :cond_d
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->n:Ljava/lang/String;

    .line 3274
    sget-object v1, Lcom/mnt/impl/i/b/c;->p:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4257
    const-string v1, ""

    .line 4259
    :cond_e
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->o:Ljava/lang/String;

    .line 3275
    sget-object v1, Lcom/mnt/impl/i/b/c;->q:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4267
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4268
    const-string v1, ""

    .line 4270
    :cond_f
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->p:Ljava/lang/String;

    .line 3276
    sget-object v1, Lcom/mnt/impl/i/b/c;->r:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4278
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 4279
    const-string v1, ""

    .line 4281
    :cond_10
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->q:Ljava/lang/String;

    .line 3277
    sget-object v1, Lcom/mnt/impl/i/b/c;->s:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5047
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5048
    const-string v1, "21"

    .line 5050
    :cond_11
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->r:Ljava/lang/String;

    .line 3278
    sget-object v1, Lcom/mnt/impl/i/b/c;->t:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5058
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5059
    const-string v1, ""

    .line 5061
    :cond_12
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->s:Ljava/lang/String;

    .line 3279
    sget-object v1, Lcom/mnt/impl/i/b/c;->u:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5069
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 5070
    const-string v1, ""

    .line 5072
    :cond_13
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->t:Ljava/lang/String;

    .line 3280
    sget-object v1, Lcom/mnt/impl/i/b/c;->v:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5080
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 5081
    const-string v1, ""

    .line 5083
    :cond_14
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->u:Ljava/lang/String;

    .line 3281
    sget-object v1, Lcom/mnt/impl/i/b/c;->w:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5091
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 5092
    const-string v1, ""

    .line 5094
    :cond_15
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->v:Ljava/lang/String;

    .line 3282
    sget-object v1, Lcom/mnt/impl/i/b/c;->x:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 5301
    const-string v1, ""

    .line 5303
    :cond_16
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->w:Ljava/lang/String;

    .line 3283
    sget-object v1, Lcom/mnt/impl/i/b/c;->y:Ljava/lang/String;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5312
    const-string v1, ""

    .line 5314
    :cond_17
    iput-object v1, v2, Lcom/mnt/impl/i/b/d;->x:Ljava/lang/String;

    .line 161
    invoke-virtual {v2}, Lcom/mnt/impl/i/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6210
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 6211
    const/4 v7, 0x3

    invoke-static {v4, v7}, Lcom/mnt/impl/i/d;->a(Ljava/lang/StringBuffer;I)V

    .line 6212
    iget-object v7, p0, Lcom/mnt/impl/i/b/a;->d:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/mnt/impl/i/d;->a(Landroid/content/Context;Ljava/lang/StringBuffer;)V

    .line 6213
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6214
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7109
    iget-object v1, v2, Lcom/mnt/impl/i/b/d;->b:Ljava/lang/String;

    .line 162
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    .line 198
    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 200
    if-eqz v1, :cond_18

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_18
    :goto_3
    return v10

    .line 154
    :cond_19
    :try_start_3
    sget-object v1, Lcom/mnt/impl/i/b/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/mnt/impl/e;->bH:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v12, 0x36ee80

    sub-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/mnt/impl/e;->bI:Ljava/lang/String;

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto/16 :goto_0

    .line 164
    :cond_1a
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 165
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 166
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 169
    :cond_1b
    iget-object v1, p0, Lcom/mnt/impl/i/b/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/a/a;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 170
    sget-object v1, Lcom/mnt/impl/e;->bJ:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7226
    iget-object v2, p0, Lcom/mnt/impl/i/b/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v2

    .line 7275
    iget-object v2, v2, Lcom/mnt/impl/j/b;->m:Lcom/mnt/impl/j/b$a;

    .line 7226
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/mnt/impl/j/b$a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 7230
    sget-object v2, Lcom/mnt/impl/e;->bL:Ljava/lang/String;

    .line 7231
    sget-object v4, Lcom/mnt/impl/e;->bM:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7232
    invoke-static {v1, v2}, Lcom/mnt/impl/i/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7233
    if-eqz v1, :cond_1c

    .line 7234
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mnt/impl/b/k;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 7235
    :cond_1c
    new-instance v2, Lcom/mnt/impl/f/e;

    invoke-direct {v2}, Lcom/mnt/impl/f/e;-><init>()V

    sget-object v4, Lcom/mnt/impl/i/b/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_1d
    move v4, v9

    move v2, v10

    .line 183
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_1e

    .line 184
    sget-object v7, Lcom/mnt/impl/i/b/c;->a:Ljava/lang/String;

    sget-object v8, Lcom/mnt/impl/e;->bK:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v11, v12

    invoke-virtual {v0, v7, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 185
    if-gtz v1, :cond_25

    move v1, v9

    .line 183
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_4

    .line 177
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 200
    if-eqz v3, :cond_18

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 201
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 191
    :cond_1e
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz v2, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    move v9, v10

    .line 200
    :cond_20
    if-eqz v3, :cond_21

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_21

    .line 201
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_21
    move v10, v9

    .line 191
    goto/16 :goto_3

    .line 200
    :cond_22
    if-eqz v3, :cond_18

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 201
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 200
    :cond_23
    if-eqz v3, :cond_18

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 201
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 200
    :catchall_0
    move-exception v0

    move-object v3, v11

    :goto_6
    if-eqz v3, :cond_24

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_24

    .line 201
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_24
    throw v0

    .line 200
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_6

    .line 198
    :catch_2
    move-exception v0

    move-object v1, v11

    goto/16 :goto_2

    :cond_25
    move v1, v2

    goto :goto_5
.end method


# virtual methods
.method public final a(Landroid/content/ContentValues;)V
    .locals 9

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/mnt/impl/i/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v0

    .line 1275
    iget-object v0, v0, Lcom/mnt/impl/j/b;->m:Lcom/mnt/impl/j/b$a;

    .line 67
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mnt/impl/j/b$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    if-eqz p1, :cond_0

    .line 76
    sget-object v0, Lcom/mnt/impl/i/b/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mnt/impl/i/b/a;->c:Lcom/mnt/impl/i/b/c;

    invoke-virtual {v0}, Lcom/mnt/impl/i/b/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/mnt/impl/i/b/c;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/mnt/impl/e;->bB:Ljava/lang/String;

    aput-object v4, v2, v3

    sget-object v3, Lcom/mnt/impl/e;->bC:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 85
    sget-object v0, Lcom/mnt/impl/e;->bD:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2114
    :try_start_1
    iget-object v2, p0, Lcom/mnt/impl/i/b/a;->c:Lcom/mnt/impl/i/b/c;

    invoke-virtual {v2}, Lcom/mnt/impl/i/b/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2115
    sget-object v3, Lcom/mnt/impl/i/b/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2117
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 3097
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/mnt/impl/i/b/a;->c:Lcom/mnt/impl/i/b/c;

    invoke-virtual {v0}, Lcom/mnt/impl/i/b/c;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3098
    sget-object v1, Lcom/mnt/impl/e;->bE:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    sget-object v1, Lcom/mnt/impl/e;->bF:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3100
    iget-object v1, p0, Lcom/mnt/impl/i/b/a;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/j/d;->b(Landroid/content/Context;)Lcom/mnt/impl/j/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mnt/impl/j/d;->a()Lcom/mnt/impl/j/b;

    move-result-object v1

    .line 3101
    sget-object v2, Lcom/mnt/impl/i/b/c;->s:Ljava/lang/String;

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3102
    sget-object v2, Lcom/mnt/impl/i/b/c;->t:Ljava/lang/String;

    .line 3222
    iget v3, v1, Lcom/mnt/impl/j/b;->b:I

    .line 3102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3103
    sget-object v2, Lcom/mnt/impl/i/b/c;->u:Ljava/lang/String;

    .line 3226
    iget v1, v1, Lcom/mnt/impl/j/b;->c:I

    .line 3103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3104
    sget-object v1, Lcom/mnt/impl/i/b/c;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 3107
    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/mnt/impl/i/b/b;

    invoke-direct {v0, p0, p1}, Lcom/mnt/impl/i/b/b;-><init>(Lcom/mnt/impl/i/b/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mnt/impl/l/c;->a(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method
