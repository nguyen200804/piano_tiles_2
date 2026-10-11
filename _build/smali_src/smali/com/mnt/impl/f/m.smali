.class public final Lcom/mnt/impl/f/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;
.implements Ljava/lang/Runnable;


# static fields
.field private static final A:Ljava/lang/String;

.field private static final B:Ljava/lang/String;

.field private static final C:Ljava/lang/String;

.field private static final D:Ljava/lang/String;

.field private static final E:Ljava/lang/String;

.field private static final F:Ljava/lang/String;

.field private static final G:Ljava/lang/String;

.field private static final H:Ljava/lang/String;

.field private static final I:Ljava/lang/String;

.field private static final J:Ljava/lang/String;

.field private static final K:Ljava/lang/String;

.field private static L:Ljava/lang/Long;

.field private static b:Z

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/lang/String;

.field private static final p:Ljava/lang/String;

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static final v:Ljava/lang/String;

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String;

.field private static final y:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/mnt/impl/e;->eN:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/mnt/impl/e;->eO:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/mnt/impl/e;->eP:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mnt/impl/f/m;->b:Z

    .line 77
    sget-object v0, Lcom/mnt/impl/e;->eQ:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->c:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/mnt/impl/e;->eR:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->d:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/mnt/impl/e;->eS:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->e:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/mnt/impl/e;->eT:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->f:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/mnt/impl/e;->eU:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->g:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/mnt/impl/e;->eV:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->h:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/mnt/impl/e;->eW:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->i:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/mnt/impl/e;->eX:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->j:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/mnt/impl/e;->eY:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->k:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/mnt/impl/e;->eZ:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->l:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/mnt/impl/e;->fa:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->m:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/mnt/impl/e;->fb:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->n:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/mnt/impl/e;->fc:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->o:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/mnt/impl/e;->fd:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->p:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/mnt/impl/e;->fe:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->q:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/mnt/impl/e;->ff:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->r:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/mnt/impl/e;->fg:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->s:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/mnt/impl/e;->fh:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->t:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/mnt/impl/e;->fi:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->u:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/mnt/impl/e;->fj:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->v:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/mnt/impl/e;->fk:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->w:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/mnt/impl/e;->fl:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->x:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/mnt/impl/e;->fm:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->y:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/mnt/impl/e;->fn:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->z:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/mnt/impl/e;->fo:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->A:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/mnt/impl/e;->fp:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->B:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/mnt/impl/e;->fq:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->C:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/mnt/impl/e;->fr:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->D:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/mnt/impl/e;->fs:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->E:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/mnt/impl/e;->ft:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->F:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/mnt/impl/e;->fu:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->G:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/mnt/impl/e;->fv:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->H:Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/mnt/impl/e;->fw:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->I:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/mnt/impl/e;->fx:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->J:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/mnt/impl/e;->fy:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/f/m;->K:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lcom/mnt/impl/f/m;->L:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    .line 71
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 19

    .prologue
    .line 252
    const/4 v6, 0x0

    .line 253
    const/4 v5, 0x0

    .line 254
    const/4 v7, 0x0

    .line 255
    const/4 v3, 0x0

    .line 258
    :try_start_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 259
    const v4, 0x927c0

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 260
    const v4, 0x927c0

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 261
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 263
    new-instance v2, Lcom/mnt/impl/f/e;

    invoke-direct {v2}, Lcom/mnt/impl/f/e;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/mnt/impl/f/m;->b()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/mnt/impl/b/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v8}, Lcom/mnt/impl/f/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-static {}, Lcom/mnt/impl/f/m;->c()Z

    move-result v10

    .line 266
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 267
    const/4 v2, 0x0

    .line 340
    :cond_0
    :goto_0
    return-object v2

    .line 268
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    sget-object v2, Lcom/mnt/impl/e;->fH:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 270
    sget-object v2, Lcom/mnt/impl/e;->fI:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 271
    const/4 v8, 0x0

    .line 272
    const/4 v4, 0x0

    .line 273
    if-eqz v11, :cond_2

    .line 274
    sget-object v4, Lcom/mnt/impl/e;->fJ:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 275
    sget-object v4, Lcom/mnt/impl/e;->fK:Ljava/lang/String;

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 277
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const/16 v11, 0xc8

    if-eq v8, v11, :cond_4

    .line 278
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 280
    :cond_4
    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    .line 281
    invoke-static {v2}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    :cond_5
    const/4 v8, 0x2

    if-ne v4, v8, :cond_6

    .line 284
    invoke-static {v2}, Lcom/mnt/impl/b/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    sget-object v4, Lcom/mnt/impl/e;->fL:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/mnt/impl/i/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    :cond_6
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 289
    sget-object v2, Lcom/mnt/impl/e;->fM:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v8, v2, v4}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 290
    :try_start_1
    sget-object v2, Lcom/mnt/impl/e;->fN:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Lcom/mnt/a/a;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    sget-object v11, Lcom/mnt/impl/e;->fO:Ljava/lang/String;

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 1438
    invoke-static {v2}, Lcom/mnt/impl/f/m;->b(Landroid/content/Context;)J

    move-result-wide v14

    .line 1439
    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_7

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_8

    .line 292
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    sget-object v11, Lcom/mnt/impl/e;->fP:Ljava/lang/String;

    const/16 v12, 0x8

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 2420
    invoke-static {v2}, Lcom/mnt/a/a;->n(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2421
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2422
    sget-object v11, Lcom/mnt/impl/e;->fW:Ljava/lang/String;

    invoke-interface {v2, v11, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2423
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 293
    if-nez v10, :cond_9

    .line 294
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1442
    :cond_8
    invoke-static {v2}, Lcom/mnt/a/a;->n(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1443
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1444
    sget-object v11, Lcom/mnt/impl/e;->fY:Ljava/lang/String;

    invoke-interface {v2, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1445
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 320
    :catch_0
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 321
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/mnt/impl/e;->fR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mnt/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v2, v8}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 324
    if-eqz v4, :cond_e

    .line 326
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move v4, v7

    move-object v2, v5

    .line 335
    :goto_3
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/mnt/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/mnt/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/mnt/impl/f/m;->d()V

    goto/16 :goto_0

    .line 296
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/mnt/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 297
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 298
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 299
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v8}, Lcom/mnt/a/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 300
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 301
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 303
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/mnt/impl/e;->fQ:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v8, v2}, Lcom/mnt/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 305
    :try_start_5
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-interface {v9, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 308
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 309
    if-eqz v6, :cond_0

    .line 312
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 313
    if-eqz v3, :cond_0

    .line 316
    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v3

    .line 317
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    :try_start_6
    invoke-virtual {v6, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 319
    const/4 v3, 0x1

    .line 326
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object/from16 v18, v4

    move v4, v3

    move-object/from16 v3, v18

    .line 329
    goto/16 :goto_3

    :catch_1
    move-exception v5

    move-object/from16 v18, v4

    move v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move v4, v7

    move-object v2, v5

    goto/16 :goto_3

    .line 324
    :catchall_0
    move-exception v2

    :goto_4
    if-eqz v5, :cond_d

    .line 326
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 329
    :cond_d
    :goto_5
    throw v2

    :catch_3
    move-exception v3

    goto :goto_5

    .line 324
    :catchall_1
    move-exception v2

    move-object v5, v6

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v5, v4

    goto :goto_4

    .line 320
    :catch_4
    move-exception v2

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :catch_5
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v2

    move-object/from16 v2, v18

    goto/16 :goto_2

    :catch_6
    move-exception v3

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_2

    :cond_e
    move v4, v7

    move-object v2, v5

    goto/16 :goto_3
.end method

.method private a()Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 133
    :try_start_0
    iget-object v2, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 134
    sget-object v4, Lcom/mnt/MntConfig;->SDK_NAME:Ljava/lang/String;

    .line 135
    sget-object v5, Lcom/mnt/impl/f/m;->d:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    sget-object v5, Lcom/mnt/impl/f/m;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    sget-object v5, Lcom/mnt/impl/f/m;->f:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    sget-object v5, Lcom/mnt/impl/f/m;->j:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    sget-object v5, Lcom/mnt/impl/f/m;->w:Ljava/lang/String;

    sget-object v6, Lcom/mnt/impl/b/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    sget-object v5, Lcom/mnt/impl/f/m;->i:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    sget-object v2, Lcom/mnt/impl/f/m;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/impl/b/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    sget-object v2, Lcom/mnt/impl/f/m;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/impl/b/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    sget-object v2, Lcom/mnt/impl/f/m;->l:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    sget-object v2, Lcom/mnt/impl/f/m;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    sget-object v2, Lcom/mnt/impl/f/m;->m:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    sget-object v2, Lcom/mnt/impl/f/m;->n:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/a/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    sget-object v2, Lcom/mnt/impl/f/m;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    sget-object v2, Lcom/mnt/impl/f/m;->r:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    sget-object v2, Lcom/mnt/impl/f/m;->s:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mnt/a/a;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    sget-object v2, Lcom/mnt/impl/f/m;->t:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/a/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    sget-object v2, Lcom/mnt/impl/f/m;->u:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    sget-object v2, Lcom/mnt/impl/f/m;->v:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    sget-object v2, Lcom/mnt/impl/f/m;->x:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/a/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    sget-object v2, Lcom/mnt/impl/f/m;->z:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/a/a;->i(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    sget-object v2, Lcom/mnt/impl/f/m;->A:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    sget-object v5, Lcom/mnt/impl/f/m;->B:Ljava/lang/String;

    iget-object v2, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    sget-object v6, Lcom/mnt/impl/b/k;->a:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    sget-object v5, Lcom/mnt/impl/f/m;->y:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/impl/d;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    sget-object v2, Lcom/mnt/impl/f/m;->C:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/impl/b/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    sget-object v2, Lcom/mnt/impl/f/m;->K:Ljava/lang/String;

    iget-object v5, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/mnt/impl/b/k;->g(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_2
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    sget-object v0, Lcom/mnt/impl/f/m;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/f/m;->b(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v3, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 161
    sget-object v0, Lcom/mnt/impl/f/m;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/b/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mnt/impl/e;->fz:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    sget-object v0, Lcom/mnt/impl/f/m;->p:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    sget-object v0, Lcom/mnt/impl/f/m;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    sget-object v0, Lcom/mnt/impl/f/m;->E:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    sget-object v0, Lcom/mnt/impl/f/m;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/a/a;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 166
    sget-object v0, Lcom/mnt/impl/f/m;->G:Ljava/lang/String;

    invoke-static {}, Lcom/mnt/a/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    sget-object v0, Lcom/mnt/impl/f/m;->I:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    sget-object v0, Lcom/mnt/impl/f/m;->J:Ljava/lang/String;

    const/16 v1, 0x80

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_3
    return-object v3

    :cond_0
    move v2, v1

    .line 156
    goto/16 :goto_0

    :cond_1
    move v2, v1

    .line 157
    goto :goto_1

    :cond_2
    move v0, v1

    .line 159
    goto :goto_2

    .line 170
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 372
    const-class v1, Lcom/mnt/impl/f/m;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/mnt/impl/f/m;->b:Z

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/mnt/a/a;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3384
    sget-object v2, Lcom/mnt/impl/f/m;->L:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 3385
    invoke-static {p0}, Lcom/mnt/a/a;->m(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/mnt/impl/f/m;->L:Ljava/lang/Long;

    .line 3388
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/mnt/impl/f/m;->L:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 3430
    invoke-static {p0}, Lcom/mnt/a/a;->n(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3431
    sget-object v5, Lcom/mnt/impl/e;->fX:Ljava/lang/String;

    const/16 v6, 0x8

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3388
    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 3389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/mnt/impl/f/m;->L:Ljava/lang/Long;

    .line 3390
    sget-object v2, Lcom/mnt/impl/f/m;->L:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/mnt/a/a;->a(Landroid/content/Context;J)V

    .line 372
    :goto_0
    if-nez v0, :cond_2

    .line 373
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mnt/impl/f/m;->b:Z

    .line 374
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mnt/impl/f/m;

    invoke-direct {v2, p0}, Lcom/mnt/impl/f/m;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/mnt/impl/e;->fU:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit v1

    return-void

    .line 3393
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 452
    invoke-static {p0}, Lcom/mnt/a/a;->n(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 453
    sget-object v1, Lcom/mnt/impl/e;->fZ:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 178
    :try_start_0
    invoke-direct {p0}, Lcom/mnt/impl/f/m;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    sget-object v0, Lcom/mnt/impl/e;->fA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v3, Lcom/mnt/impl/e;->fB:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mnt/impl/i/a/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mnt/impl/b/k;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 185
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mnt/impl/e;->fC:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mnt/impl/e;->fC:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mnt/impl/b/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    sget-object v3, Lcom/mnt/impl/e;->fD:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/mnt/impl/e;->fE:Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/e;->fF:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/mnt/impl/e;->fG:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    return-object v2

    .line 190
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static c()Z
    .locals 3

    .prologue
    .line 344
    const/4 v0, 0x1

    .line 346
    :try_start_0
    sget-object v1, Lcom/mnt/impl/e;->fS:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 347
    sget-object v2, Lcom/mnt/impl/e;->fT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 348
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 351
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/a/a;->o(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 360
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 362
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/a/a;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 403
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/mnt/impl/e;->fV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mnt/impl/f/m;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/a/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mnt/impl/f/m;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mnt/impl/f/m;->a(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mnt/impl/f/m;->b:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
