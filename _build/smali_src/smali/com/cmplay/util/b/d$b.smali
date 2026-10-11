.class Lcom/cmplay/util/b/d$b;
.super Ljava/lang/Object;
.source "ServicePreferencesHelper.java"

# interfaces
.implements Lcom/cmplay/ipc/c;
.implements Lcom/cmplay/util/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmplay/util/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 268
    :cond_0
    iput-object p1, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    .line 269
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;F)F
    .locals 3

    .prologue
    .line 338
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 339
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 345
    :try_start_0
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 347
    :goto_0
    return p2

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x4

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 309
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    :try_start_0
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 317
    :goto_0
    return p2

    .line 316
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 278
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 279
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    :try_start_0
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 287
    :goto_0
    return-wide p2

    .line 286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 323
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 324
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :try_start_0
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 332
    :goto_0
    return-object p2

    .line 331
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 293
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 294
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 300
    :try_start_0
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 302
    :goto_0
    return p2

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;F)V
    .locals 3

    .prologue
    .line 397
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 398
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 403
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    .line 404
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 375
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 376
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    .line 382
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 364
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 365
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 370
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    .line 371
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 386
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 387
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    .line 393
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 353
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 354
    invoke-static {}, Lcom/cmplay/util/b/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/util/b/d$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/cmplay/util/b/d;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    invoke-static {}, Lcom/cmplay/util/b/d;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    invoke-static {}, Lcom/cmplay/util/b/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/cmplay/util/b/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 359
    invoke-static {v0, p0}, Lcom/cmplay/ipc/IpcProvider;->a(Landroid/content/ContentValues;Lcom/cmplay/ipc/c;)Ljava/lang/String;

    .line 360
    return-void
.end method
