.class public final Lcom/mnt/impl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/mnt/impl/f/d$a;
.implements Lcom/mnt/impl/f/h$a;


# static fields
.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;


# instance fields
.field public a:Lcom/mnt/MntNative;

.field public b:Lcom/mnt/a/f;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mnt/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Landroid/content/Context;

.field private h:Lcom/mnt/MntBuild;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/mnt/impl/e;->lT:Ljava/lang/String;

    sput-object v0, Lcom/mnt/impl/b;->f:Ljava/lang/String;

    .line 57
    const-string v0, "2147483647"

    sput-object v0, Lcom/mnt/impl/b;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/b;)Lcom/mnt/a/f;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    return-object v0
.end method

.method private a(Lcom/mnt/AdError;)V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    invoke-interface {v0, p1}, Lcom/mnt/a/f;->a(Lcom/mnt/AdError;)V

    .line 653
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/b;Lcom/mnt/impl/e/g;Lcom/mnt/MntBuild;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/g;ZLcom/mnt/MntBuild;)V

    return-void
.end method

.method private a(Lcom/mnt/impl/e/g;ZLcom/mnt/MntBuild;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 265
    if-nez p1, :cond_1

    .line 266
    :try_start_0
    sget-object v0, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-direct {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/AdError;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 4281
    :cond_1
    iget v0, p1, Lcom/mnt/impl/e/g;->a:I

    .line 269
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    .line 270
    sget-object v0, Lcom/mnt/AdError;->SERVER_ERROR:Lcom/mnt/AdError;

    invoke-direct {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/AdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 273
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    if-eqz v0, :cond_0

    .line 276
    iget-object v5, p3, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    .line 278
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5172
    iget-object v6, p1, Lcom/mnt/impl/e/g;->g:Lcom/mnt/impl/e/g$c;

    .line 282
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    .line 5297
    iget-object v2, p1, Lcom/mnt/impl/e/g;->f:Ljava/util/List;

    .line 282
    invoke-direct {p0}, Lcom/mnt/impl/b;->c()I

    move-result v3

    iget-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v0}, Lcom/mnt/MntNative;->getCreatives()Ljava/lang/String;

    move-result-object v4

    move v0, p2

    invoke-static/range {v0 .. v7}, Lcom/mnt/impl/b/k;->a(ZLandroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/mnt/impl/e/g$c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    if-eqz v2, :cond_a

    .line 290
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 291
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 292
    check-cast v0, Lcom/mnt/impl/e/c;

    .line 293
    sget-object v8, Lcom/mnt/impl/e;->lX:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 296
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 299
    :cond_4
    :goto_2
    if-eqz v6, :cond_6

    .line 5548
    iget-object v0, v6, Lcom/mnt/impl/e/g$c;->a:Ljava/lang/String;

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 300
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    .line 6548
    iget-object v4, v6, Lcom/mnt/impl/e/g$c;->a:Ljava/lang/String;

    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v5, v7, v3}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 302
    sget-object v0, Lcom/mnt/impl/e;->lY:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mnt/impl/b;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 303
    sget-object v0, Lcom/mnt/impl/e;->lZ:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 304
    const-string v0, ""

    .line 305
    iget-object v4, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v4}, Lcom/mnt/MntNative;->getCreatives()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 306
    iget-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v0}, Lcom/mnt/MntNative;->getCreatives()Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_5
    sget-object v4, Lcom/mnt/impl/e;->ma:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 309
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 311
    :cond_6
    if-nez v2, :cond_7

    .line 312
    sget-object v0, Lcom/mnt/AdError;->NO_OFFERS:Lcom/mnt/AdError;

    invoke-direct {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/AdError;)V

    goto/16 :goto_0

    .line 315
    :cond_7
    if-gtz v1, :cond_8

    .line 317
    sget-object v0, Lcom/mnt/AdError;->ALL_ADS_COMSUMED:Lcom/mnt/AdError;

    invoke-direct {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/AdError;)V

    goto/16 :goto_0

    .line 320
    :cond_8
    iput-object v2, p0, Lcom/mnt/impl/b;->c:Ljava/util/List;

    .line 321
    iget v0, p0, Lcom/mnt/impl/b;->i:I

    sget-object v1, Lcom/mnt/impl/c/a;->a:Lcom/mnt/impl/c/a;

    .line 7022
    iget v1, v1, Lcom/mnt/impl/c/a;->c:I

    .line 321
    if-ne v0, v1, :cond_9

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mnt/impl/b;->d:Z

    .line 324
    :cond_9
    iget-object v0, p0, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    invoke-interface {v0, v2}, Lcom/mnt/a/f;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    move v1, v8

    goto :goto_2
.end method

.method static synthetic b(Lcom/mnt/impl/b;)Lcom/mnt/MntBuild;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;)Lcom/mnt/impl/e/g;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mnt/impl/e/g;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    new-instance v0, Lcom/mnt/impl/f/d;

    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/mnt/impl/f/d;-><init>(Landroid/content/Context;Lcom/mnt/impl/f/d$a;)V

    .line 208
    invoke-virtual {v0}, Lcom/mnt/impl/f/d;->c()V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_1
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    invoke-direct {p0, v0, v1, v2}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/g;ZLcom/mnt/MntBuild;)V

    .line 212
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mnt/impl/k/a;->a(Landroid/content/Context;Lcom/mnt/impl/e/g;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/mnt/impl/b;Lcom/mnt/impl/e/g;Lcom/mnt/MntBuild;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 23336
    .line 24297
    :try_start_0
    iget-object v0, p1, Lcom/mnt/impl/e/g;->f:Ljava/util/List;

    .line 23336
    if-nez v0, :cond_1

    .line 23337
    invoke-direct {p0}, Lcom/mnt/impl/b;->b()V

    .line 23389
    :cond_0
    :goto_0
    return-void

    .line 23340
    :cond_1
    iget-object v0, p0, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    if-eqz v0, :cond_0

    .line 23343
    iget-object v5, p2, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    .line 23345
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 25172
    iget-object v6, p1, Lcom/mnt/impl/e/g;->g:Lcom/mnt/impl/e/g$c;

    .line 23348
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    .line 25297
    iget-object v2, p1, Lcom/mnt/impl/e/g;->f:Ljava/util/List;

    .line 23348
    invoke-direct {p0}, Lcom/mnt/impl/b;->c()I

    move-result v3

    iget-object v4, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v4}, Lcom/mnt/MntNative;->getCreatives()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v7}, Lcom/mnt/impl/b/k;->a(ZLandroid/content/Context;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Lcom/mnt/impl/e/g$c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 23349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23350
    if-eqz v2, :cond_9

    .line 23351
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 23352
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 23353
    check-cast v0, Lcom/mnt/impl/e/c;

    .line 23354
    sget-object v8, Lcom/mnt/impl/e;->mb:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 23388
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 23356
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 23357
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    move v0, v1

    .line 23360
    :goto_2
    if-eqz v2, :cond_4

    if-gtz v0, :cond_5

    .line 23362
    :cond_4
    invoke-direct {p0}, Lcom/mnt/impl/b;->b()V

    goto :goto_0

    .line 23366
    :cond_5
    if-eqz v6, :cond_7

    .line 25548
    iget-object v1, v6, Lcom/mnt/impl/e/g$c;->a:Ljava/lang/String;

    .line 23366
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 23367
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    .line 26548
    iget-object v4, v6, Lcom/mnt/impl/e/g$c;->a:Ljava/lang/String;

    .line 23367
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v5, v7, v3}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 23368
    if-eqz v1, :cond_7

    .line 23369
    sget-object v3, Lcom/mnt/impl/e;->mc:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mnt/impl/b;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23370
    sget-object v3, Lcom/mnt/impl/e;->md:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23371
    const-string v0, ""

    .line 23372
    iget-object v3, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v3}, Lcom/mnt/MntNative;->getCreatives()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 23373
    iget-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v0}, Lcom/mnt/MntNative;->getCreatives()Ljava/lang/String;

    move-result-object v0

    .line 23375
    :cond_6
    sget-object v3, Lcom/mnt/impl/e;->me:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23376
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 23379
    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mnt/impl/b;->a(ZLjava/lang/String;)V

    .line 23380
    iput-object v2, p0, Lcom/mnt/impl/b;->c:Ljava/util/List;

    .line 23381
    iget v0, p0, Lcom/mnt/impl/b;->i:I

    sget-object v1, Lcom/mnt/impl/c/a;->a:Lcom/mnt/impl/c/a;

    .line 27022
    iget v1, v1, Lcom/mnt/impl/c/a;->c:I

    .line 23381
    if-ne v0, v1, :cond_8

    .line 23382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mnt/impl/b;->d:Z

    .line 23385
    :cond_8
    iget-object v0, p0, Lcom/mnt/impl/b;->b:Lcom/mnt/a/f;

    invoke-interface {v0, v2}, Lcom/mnt/a/f;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move v0, v8

    goto :goto_2
.end method

.method private c()I
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget v0, v0, Lcom/mnt/MntBuild;->mAdsNum:I

    if-gtz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/h;->h(Landroid/content/Context;)I

    move-result v0

    .line 627
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget v0, v0, Lcom/mnt/MntBuild;->mAdsNum:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/mnt/impl/b;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mnt/impl/b;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 665
    iget-object v0, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget v0, v0, Lcom/mnt/MntBuild;->mType:I

    sget-object v1, Lcom/mnt/MntAdType;->NATIVE:Lcom/mnt/MntAdType;

    invoke-virtual {v1}, Lcom/mnt/MntAdType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 666
    iput-object v2, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    .line 667
    invoke-static {}, Lcom/mnt/impl/f/d;->d()V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/b;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lcom/mnt/impl/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 672
    iput-object v2, p0, Lcom/mnt/impl/b;->c:Ljava/util/List;

    .line 674
    :cond_1
    return-void
.end method

.method public final a(Lcom/mnt/MntBuild;)V
    .locals 6

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    .line 85
    :try_start_0
    sget-object v0, Lcom/mnt/impl/c/a;->a:Lcom/mnt/impl/c/a;

    .line 1022
    iget v0, v0, Lcom/mnt/impl/c/a;->c:I

    .line 85
    iput v0, p0, Lcom/mnt/impl/b;->i:I

    .line 86
    iget-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/mnt/MntNative;

    invoke-virtual {p1}, Lcom/mnt/MntBuild;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mnt/MntNative;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    .line 88
    iget-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    iget v1, p1, Lcom/mnt/MntBuild;->mAdsNum:I

    invoke-virtual {v0, v1}, Lcom/mnt/MntNative;->setAdsNum(I)V

    .line 89
    iget-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    iget-object v1, p1, Lcom/mnt/MntBuild;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mnt/MntNative;->setChannel(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    iget-object v1, p1, Lcom/mnt/MntBuild;->mCreatives:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mnt/MntNative;->setCreatives(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    iget-object v1, p1, Lcom/mnt/MntBuild;->mDownloadType:Lcom/mnt/DownloadType;

    invoke-virtual {v0, v1}, Lcom/mnt/MntNative;->setDownloadType(Lcom/mnt/DownloadType;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v0, v0, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 94
    sget-object v0, Lcom/mnt/impl/b;->f:Ljava/lang/String;

    sget-object v1, Lcom/mnt/impl/e;->lU:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v0, v0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v0, v0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    sget-object v1, Lcom/mnt/AdError;->NO_MATERIAL:Lcom/mnt/AdError;

    invoke-interface {v0, v1}, Lcom/mnt/IAdListener;->onAdError(Lcom/mnt/AdError;)V

    .line 1177
    :cond_1
    :goto_0
    return-void

    .line 1596
    :cond_2
    iget-object v0, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v0}, Lcom/mnt/MntNative;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 1597
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1598
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    iget-object v1, p0, Lcom/mnt/impl/b;->a:Lcom/mnt/MntNative;

    invoke-virtual {v1, v0}, Lcom/mnt/MntNative;->setAppKey(Ljava/lang/String;)V

    .line 1167
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1171
    sget-object v0, Lcom/mnt/impl/b;->f:Ljava/lang/String;

    sget-object v1, Lcom/mnt/impl/e;->lW:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    sget-object v0, Lcom/mnt/AdError;->NO_APPKEY:Lcom/mnt/AdError;

    invoke-direct {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/AdError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1175
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/a/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1176
    sget-object v0, Lcom/mnt/AdError;->NO_NETWORK:Lcom/mnt/AdError;

    invoke-direct {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/AdError;)V

    goto :goto_0

    .line 1179
    :cond_5
    new-instance v0, Lcom/mnt/impl/f/j;

    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v2, v2, Lcom/mnt/MntBuild;->mPlacementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v3, v3, Lcom/mnt/MntBuild;->mCreatives:Ljava/lang/String;

    iget-object v4, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget v4, v4, Lcom/mnt/MntBuild;->mAdsNum:I

    new-instance v5, Lcom/mnt/impl/d;

    invoke-direct {v5, p0}, Lcom/mnt/impl/d;-><init>(Lcom/mnt/impl/b;)V

    invoke-direct/range {v0 .. v5}, Lcom/mnt/impl/f/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/mnt/impl/f/d$a;)V

    .line 1195
    invoke-virtual {v0}, Lcom/mnt/impl/f/j;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public final a(Lcom/mnt/impl/e/b;)V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;)V

    .line 584
    return-void
.end method

.method public final a(Lcom/mnt/impl/e/c;)V
    .locals 5

    .prologue
    .line 143
    .line 2088
    iget-object v0, p1, Lcom/mnt/impl/e/c;->l:Ljava/lang/String;

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3088
    iget-object v0, p1, Lcom/mnt/impl/e/c;->l:Ljava/lang/String;

    .line 144
    sget-object v1, Lcom/mnt/impl/e;->lV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 145
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 146
    iget-object v4, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public final a(Lcom/mnt/impl/e/g;)V
    .locals 2

    .prologue
    .line 657
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    invoke-direct {p0, p1, v0, v1}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/g;ZLcom/mnt/MntBuild;)V

    .line 658
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 13

    .prologue
    .line 401
    instance-of v0, p1, Lcom/mnt/Ad;

    if-eqz v0, :cond_0

    .line 402
    check-cast p1, Lcom/mnt/Ad;

    .line 403
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    if-nez v0, :cond_1

    .line 16559
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    instance-of v0, p1, Lcom/mnt/impl/e/c;

    if-eqz v0, :cond_0

    .line 407
    check-cast p1, Lcom/mnt/impl/e/c;

    .line 7421
    new-instance v0, Lcom/mnt/impl/e/a;

    invoke-virtual {p1}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8056
    iget-object v4, p1, Lcom/mnt/impl/e/c;->f:Ljava/lang/String;

    .line 7421
    invoke-virtual {p1}, Lcom/mnt/impl/e/c;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 8076
    iget-object v6, p1, Lcom/mnt/impl/e/c;->h:Ljava/lang/String;

    .line 9036
    iget-object v7, p1, Lcom/mnt/impl/e/c;->a:Ljava/lang/String;

    .line 9052
    iget-wide v8, p1, Lcom/mnt/impl/e/c;->e:J

    .line 10044
    iget v10, p1, Lcom/mnt/impl/e/c;->c:I

    .line 10068
    iget-object v11, p1, Lcom/mnt/impl/e/c;->i:Ljava/lang/String;

    .line 10080
    iget v12, p1, Lcom/mnt/impl/e/c;->j:I

    .line 7421
    invoke-direct/range {v0 .. v12}, Lcom/mnt/impl/e/a;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;I)V

    .line 7422
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/b/a;->a(Landroid/content/Context;)Lcom/mnt/impl/b/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/b/a;->a(Lcom/mnt/impl/e/a;)V

    .line 11048
    iget-object v0, p1, Lcom/mnt/impl/e/c;->d:Ljava/lang/String;

    .line 7423
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7425
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    .line 12048
    iget-object v1, p1, Lcom/mnt/impl/e/c;->d:Ljava/lang/String;

    .line 12076
    iget-object v2, p1, Lcom/mnt/impl/e/c;->h:Ljava/lang/String;

    .line 13068
    iget-object v3, p1, Lcom/mnt/impl/e/c;->i:Ljava/lang/String;

    .line 7425
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7426
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 13084
    :cond_2
    iget-object v0, p1, Lcom/mnt/impl/e/c;->k:Ljava/lang/String;

    .line 7430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14084
    iget-object v0, p1, Lcom/mnt/impl/e/c;->k:Ljava/lang/String;

    .line 7431
    sget-object v1, Lcom/mnt/impl/e;->mf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7432
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 7433
    iget-object v4, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 7432
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14444
    :cond_3
    new-instance v0, Lcom/mnt/impl/e/b;

    invoke-virtual {p1}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mnt/impl/e/c;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 15036
    iget-object v3, p1, Lcom/mnt/impl/e/c;->a:Ljava/lang/String;

    .line 14444
    const-wide/16 v4, 0x0

    .line 15080
    iget v6, p1, Lcom/mnt/impl/e/c;->j:I

    .line 14444
    invoke-direct/range {v0 .. v6}, Lcom/mnt/impl/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 16044
    iget v1, p1, Lcom/mnt/impl/e/c;->c:I

    .line 14446
    packed-switch v1, :pswitch_data_0

    .line 14491
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    if-eqz v1, :cond_4

    .line 14492
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    invoke-interface {v1}, Lcom/mnt/IUrlAnalysisListener;->onAnalysisStart()V

    .line 19505
    :cond_4
    invoke-virtual {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/b;)V

    goto/16 :goto_0

    .line 16519
    :pswitch_0
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    if-eqz v1, :cond_5

    .line 16520
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    invoke-interface {v1}, Lcom/mnt/IUrlAnalysisListener;->onAnalysisStart()V

    .line 16521
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V

    goto/16 :goto_0

    .line 16533
    :cond_5
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    const-class v2, Lcom/mnt/MntActivity;

    invoke-static {v1, v2}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16535
    :try_start_0
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/mnt/impl/a/a;->a(Landroid/content/Context;Lcom/mnt/Ad;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 16551
    :cond_6
    :try_start_1
    new-instance v1, Lcom/mnt/impl/view/TitleView;

    iget-object v2, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mnt/impl/view/TitleView;-><init>(Landroid/content/Context;)V

    .line 16552
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mnt/impl/view/TitleView;->setFocusable(Z)V

    .line 16553
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mnt/impl/view/TitleView;->setFocusableInTouchMode(Z)V

    .line 16554
    invoke-virtual {v1, p0}, Lcom/mnt/impl/view/TitleView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 16555
    iget-object v2, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/impl/b/f;->a(Landroid/content/Context;)Lcom/mnt/impl/b/f;

    move-result-object v2

    sget-object v3, Lcom/mnt/impl/b;->g:Ljava/lang/String;

    sget v4, Lcom/mnt/impl/b/f$a;->c:I

    .line 17062
    iget-object v4, v2, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 17063
    iget-object v4, v2, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 17064
    iget-object v4, v2, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x3f19999a    # 0.6f

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 17065
    iget-object v4, v2, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 17072
    iget-object v4, v2, Lcom/mnt/impl/b/f;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    .line 17073
    sget-object v4, Lcom/mnt/impl/b/g;->a:[I

    .line 17081
    iget-object v4, v2, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x11

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 17087
    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v2, Lcom/mnt/impl/b/f;->c:Landroid/view/ViewGroup;

    .line 17088
    iget-object v1, v2, Lcom/mnt/impl/b/f;->d:Ljava/util/Map;

    iget-object v4, v2, Lcom/mnt/impl/b/f;->c:Landroid/view/ViewGroup;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17089
    iget-object v1, v2, Lcom/mnt/impl/b/f;->a:Landroid/view/WindowManager;

    iget-object v3, v2, Lcom/mnt/impl/b/f;->c:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/mnt/impl/b/f;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16556
    :cond_7
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 16558
    :catch_1
    move-exception v1

    .line 17505
    invoke-virtual {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/b;)V

    goto/16 :goto_0

    .line 18052
    :pswitch_1
    iget-wide v2, p1, Lcom/mnt/impl/e/c;->e:J

    .line 18056
    iput-wide v2, v0, Lcom/mnt/impl/e/b;->e:J

    .line 14454
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V

    .line 14455
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;)Lcom/mnt/impl/e/b;

    move-result-object v1

    .line 14456
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/mnt/impl/e/b;->a()Z

    move-result v2

    if-nez v2, :cond_8

    move-object v0, v1

    .line 14459
    :cond_8
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    if-eqz v1, :cond_9

    .line 14460
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    invoke-interface {v1}, Lcom/mnt/IUrlAnalysisListener;->onAnalysisStart()V

    .line 14462
    :cond_9
    invoke-virtual {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/b;)V

    goto/16 :goto_0

    .line 14470
    :pswitch_2
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    if-eqz v1, :cond_a

    .line 14471
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    invoke-interface {v1}, Lcom/mnt/IUrlAnalysisListener;->onAnalysisStart()V

    .line 14473
    :cond_a
    invoke-virtual {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/b;)V

    goto/16 :goto_0

    .line 14476
    :pswitch_3
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    if-eqz v1, :cond_b

    .line 14477
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    invoke-interface {v1}, Lcom/mnt/IUrlAnalysisListener;->onAnalysisStart()V

    .line 18515
    :cond_b
    invoke-virtual {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/b;)V

    goto/16 :goto_0

    .line 14482
    :pswitch_4
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    if-eqz v1, :cond_c

    .line 14483
    iget-object v1, p0, Lcom/mnt/impl/b;->h:Lcom/mnt/MntBuild;

    iget-object v1, v1, Lcom/mnt/MntBuild;->mClickUrl:Lcom/mnt/IUrlAnalysisListener;

    invoke-interface {v1}, Lcom/mnt/IUrlAnalysisListener;->onAnalysisStart()V

    .line 19052
    :cond_c
    iget-wide v2, p1, Lcom/mnt/impl/e/c;->e:J

    .line 19056
    iput-wide v2, v0, Lcom/mnt/impl/e/b;->e:J

    .line 14487
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/mnt/impl/f/h;->a(Landroid/content/Context;Lcom/mnt/impl/e/b;Lcom/mnt/impl/f/h$a;Z)V

    .line 14488
    invoke-virtual {p0, v0}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/b;)V

    goto/16 :goto_0

    .line 14446
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/h;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/f/d;->a(Landroid/content/Context;)Lcom/mnt/impl/e/g;

    move-result-object v0

    .line 249
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mnt/impl/e/g;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    :cond_1
    new-instance v0, Lcom/mnt/impl/f/d;

    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/mnt/impl/f/d;-><init>(Landroid/content/Context;Lcom/mnt/impl/f/d$a;)V

    .line 4038
    iput-object p2, v0, Lcom/mnt/impl/f/d;->a:Ljava/lang/String;

    .line 252
    invoke-virtual {v0}, Lcom/mnt/impl/f/d;->c()V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/mnt/impl/k/a;->a(Landroid/content/Context;Lcom/mnt/impl/e/g;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 631
    instance-of v0, p1, Lcom/mnt/Ad;

    if-eqz v0, :cond_1

    .line 632
    check-cast p1, Lcom/mnt/Ad;

    .line 633
    instance-of v0, p1, Lcom/mnt/impl/e/c;

    if-eqz v0, :cond_1

    .line 634
    check-cast p1, Lcom/mnt/impl/e/c;

    .line 21040
    iget-object v0, p1, Lcom/mnt/impl/e/c;->b:Ljava/lang/String;

    .line 635
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    .line 22040
    iget-object v1, p1, Lcom/mnt/impl/e/c;->b:Ljava/lang/String;

    .line 22076
    iget-object v2, p1, Lcom/mnt/impl/e/c;->h:Ljava/lang/String;

    .line 23068
    iget-object v3, p1, Lcom/mnt/impl/e/c;->i:Ljava/lang/String;

    .line 637
    invoke-virtual {p1}, Lcom/mnt/impl/e/c;->getCampId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    iget-object v1, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/i/c;->a(Landroid/content/Context;)Lcom/mnt/impl/i/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mnt/impl/i/c;->a(Ljava/lang/String;)V

    .line 640
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mnt/impl/b;->a(Lcom/mnt/impl/e/c;)V

    .line 643
    :cond_1
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 565
    packed-switch p2, :pswitch_data_0

    .line 572
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 567
    :pswitch_0
    iget-object v0, p0, Lcom/mnt/impl/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/f;->a(Landroid/content/Context;)Lcom/mnt/impl/b/f;

    move-result-object v1

    sget-object v2, Lcom/mnt/impl/b;->g:Ljava/lang/String;

    .line 20100
    :try_start_0
    iget-object v0, v1, Lcom/mnt/impl/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/mnt/impl/b/f;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 20101
    iget-object v0, v1, Lcom/mnt/impl/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/mnt/impl/b/f;->c:Landroid/view/ViewGroup;

    .line 20102
    iget-object v0, v1, Lcom/mnt/impl/b/f;->a:Landroid/view/WindowManager;

    iget-object v3, v1, Lcom/mnt/impl/b/f;->c:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 20103
    iget-object v0, v1, Lcom/mnt/impl/b/f;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20104
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/mnt/impl/b/f;->c:Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20107
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 565
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
