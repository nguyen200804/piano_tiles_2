.class public final Lcom/cmcm/orion/picks/a/a/a;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:I

.field private H:Ljava/lang/String;

.field private I:J

.field private J:I

.field private K:I

.field private L:I

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:D

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/cmcm/orion/picks/a/a/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/cmcm/orion/picks/a/a/a;->l:I

    .line 51
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/a/a/a;->w:Z

    .line 60
    const-string v0, "0"

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->D:Ljava/lang/String;

    .line 63
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/a/a/a;->F:Z

    .line 69
    const/16 v0, 0x64

    iput v0, p0, Lcom/cmcm/orion/picks/a/a/a;->J:I

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 2

    .prologue
    .line 297
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->G:I

    sget-object v1, Lcom/cmcm/orion/adsdk/a;->a:Lcom/cmcm/orion/adsdk/a;

    iget v1, v1, Lcom/cmcm/orion/adsdk/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Z
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->k:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->k:I

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->k:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->k:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method public final J()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->C:I

    return v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->H:Ljava/lang/String;

    return-object v0
.end method

.method public final L()J
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/cmcm/orion/picks/a/a/a;->I:J

    return-wide v0
.end method

.method public final M()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->K:I

    return v0
.end method

.method public final N()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->L:I

    return v0
.end method

.method public final O()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->J:I

    return v0
.end method

.method public final a()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->G:I

    return v0
.end method

.method public final a(D)V
    .locals 1

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/cmcm/orion/picks/a/a/a;->h:D

    .line 229
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->G:I

    .line 79
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/cmcm/orion/picks/a/a/a;->u:J

    .line 132
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/a/a/l;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->z:Lcom/cmcm/orion/picks/a/a/l;

    .line 386
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->s:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/cmcm/orion/picks/a/a/a;->w:Z

    .line 290
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 139
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->r:I

    .line 140
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 459
    iput-wide p1, p0, Lcom/cmcm/orion/picks/a/a/a;->I:J

    .line 460
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->t:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 216
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->j:I

    .line 217
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->v:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->k:I

    .line 233
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->x:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 244
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->l:I

    .line 245
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->q:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 444
    check-cast p1, Lcom/cmcm/orion/picks/a/a/a;

    .line 445
    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lcom/cmcm/orion/picks/a/a/a;->B:I

    iget v1, p0, Lcom/cmcm/orion/picks/a/a/a;->B:I

    if-ne v0, v1, :cond_0

    .line 446
    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/cmcm/orion/picks/a/a/a;->u:J

    return-wide v0
.end method

.method public final f(I)V
    .locals 0

    .prologue
    .line 276
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->B:I

    .line 277
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->a:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->r:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    .prologue
    .line 431
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->C:I

    .line 432
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->b:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final h(I)V
    .locals 0

    .prologue
    .line 467
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->K:I

    .line 468
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->c:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final i(I)V
    .locals 0

    .prologue
    .line 475
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->L:I

    .line 476
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->d:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final j(I)V
    .locals 0

    .prologue
    .line 483
    iput p1, p0, Lcom/cmcm/orion/picks/a/a/a;->J:I

    .line 484
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->e:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->f:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->g:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->i:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->A:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->m:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->n:Ljava/lang/String;

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->j:I

    return v0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->p:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public final r()D
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/cmcm/orion/picks/a/a/a;->h:D

    return-wide v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->o:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->k:I

    return v0
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->y:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public final t()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->l:I

    return v0
.end method

.method public final t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->D:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->E:Ljava/lang/String;

    .line 398
    return-void
.end method

.method public final u()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->k:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/cmcm/orion/picks/a/a/a;->H:Ljava/lang/String;

    .line 452
    return-void
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 260
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->k:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/cmcm/orion/picks/a/a/a;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/cmcm/orion/picks/a/a/a;->B:I

    return v0
.end method

.method public final y()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/a;->p:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/cmcm/orion/utils/b;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 1111
    :cond_1
    iget-object v2, p0, Lcom/cmcm/orion/picks/a/a/a;->v:Ljava/lang/String;

    .line 283
    invoke-static {v2}, Lcom/cmcm/orion/picks/a/a/h;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1127
    iget-wide v6, p0, Lcom/cmcm/orion/picks/a/a/a;->u:J

    .line 284
    sub-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/a/a/a;->w:Z

    return v0
.end method
