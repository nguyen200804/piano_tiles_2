.class public Lcom/cmplay/internalpush/data/c;
.super Ljava/lang/Object;
.source "Info.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:J

.field private K:Ljava/lang/String;

.field private L:I

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:D

.field private P:I

.field private Q:I

.field private R:I

.field private S:Ljava/lang/String;

.field private T:I

.field private U:Z

.field private V:I

.field private W:Ljava/lang/String;

.field private X:Z

.field private Y:Z

.field private Z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/l;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/b;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Z

.field private ab:I

.field private ac:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:J

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:J

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v1, p0, Lcom/cmplay/internalpush/data/c;->b:Z

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/c;->a:Ljava/util/ArrayList;

    .line 155
    iput-boolean v1, p0, Lcom/cmplay/internalpush/data/c;->X:Z

    .line 156
    iput-boolean v1, p0, Lcom/cmplay/internalpush/data/c;->Y:Z

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/data/c;->Z:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->A:Ljava/lang/String;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->B:Ljava/lang/String;

    return-object v0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->C:I

    return v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->D:I

    return v0
.end method

.method public E()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->E:I

    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->F:Ljava/lang/String;

    return-object v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->G:Ljava/lang/String;

    return-object v0
.end method

.method public H()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->H:I

    return v0
.end method

.method public I()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->I:I

    return v0
.end method

.method public J()J
    .locals 2

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/c;->J:J

    return-wide v0
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->K:Ljava/lang/String;

    return-object v0
.end method

.method public L()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->L:I

    return v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->M:Ljava/lang/String;

    return-object v0
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->N:Ljava/lang/String;

    return-object v0
.end method

.method public O()D
    .locals 2

    .prologue
    .line 498
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/c;->O:D

    return-wide v0
.end method

.method public P()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/base/util/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public Q()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->P:I

    return v0
.end method

.method public R()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->Q:I

    return v0
.end method

.method public S()I
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->R:I

    return v0
.end method

.method public T()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->T:I

    return v0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/c;->U:Z

    return v0
.end method

.method public V()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->V:I

    return v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->W:Ljava/lang/String;

    return-object v0
.end method

.method public X()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cmplay/internalpush/data/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->Z:Ljava/util/ArrayList;

    return-object v0
.end method

.method public Y()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/c;->X:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/c;->Y:Z

    return v0
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 502
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/c;->O:D

    .line 503
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 206
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->h:I

    .line 207
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 190
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/c;->f:J

    .line 191
    return-void
.end method

.method public a(Lcom/cmplay/base/util/b;)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->S:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/cmplay/internalpush/data/c;->aa:Z

    .line 175
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/c;->aa:Z

    return v0
.end method

.method public aa()I
    .locals 1

    .prologue
    .line 598
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->ab:I

    return v0
.end method

.method public ab()I
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->ac:I

    return v0
.end method

.method public ac()Z
    .locals 4

    .prologue
    .line 618
    const-wide/16 v0, 0x3e7

    iget-wide v2, p0, Lcom/cmplay/internalpush/data/c;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->S:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 246
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->j:I

    .line 247
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/c;->g:J

    .line 199
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->c:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/cmplay/internalpush/data/c;->k:Z

    .line 255
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/c;->f:J

    return-wide v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 326
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->v:I

    .line 327
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 214
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/c;->i:J

    .line 215
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->l:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/cmplay/internalpush/data/c;->y:Z

    .line 351
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/c;->g:J

    return-wide v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 334
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->w:I

    .line 335
    return-void
.end method

.method public d(J)V
    .locals 1

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/c;->d:J

    .line 231
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->m:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/cmplay/internalpush/data/c;->U:Z

    .line 551
    return-void
.end method

.method public e()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->h:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 358
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->z:I

    .line 359
    return-void
.end method

.method public e(J)V
    .locals 1

    .prologue
    .line 238
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/c;->e:J

    .line 239
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->n:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 586
    iput-boolean p1, p0, Lcom/cmplay/internalpush/data/c;->X:Z

    .line 587
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/c;->i:J

    return-wide v0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 398
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->C:I

    .line 399
    return-void
.end method

.method public f(J)V
    .locals 1

    .prologue
    .line 342
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/c;->x:J

    .line 343
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->o:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/cmplay/internalpush/data/c;->Y:Z

    .line 595
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 406
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->D:I

    .line 407
    return-void
.end method

.method public g(J)V
    .locals 1

    .prologue
    .line 454
    iput-wide p1, p0, Lcom/cmplay/internalpush/data/c;->J:J

    .line 455
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->p:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/c;->d:J

    return-wide v0
.end method

.method public h(I)V
    .locals 0

    .prologue
    .line 414
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->E:I

    .line 415
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->q:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public i()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/c;->e:J

    return-wide v0
.end method

.method public i(I)V
    .locals 0

    .prologue
    .line 438
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->H:I

    .line 439
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->t:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->j:I

    return v0
.end method

.method public j(I)V
    .locals 0

    .prologue
    .line 446
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->I:I

    .line 447
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->u:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public k(I)V
    .locals 0

    .prologue
    .line 478
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->L:I

    .line 479
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->r:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/c;->k:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l(I)V
    .locals 0

    .prologue
    .line 518
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->P:I

    .line 519
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->s:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m(I)V
    .locals 0

    .prologue
    .line 526
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->Q:I

    .line 527
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->A:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n(I)V
    .locals 0

    .prologue
    .line 534
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->R:I

    .line 535
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->B:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public o(I)V
    .locals 0

    .prologue
    .line 542
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->T:I

    .line 543
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->F:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p(I)V
    .locals 0

    .prologue
    .line 558
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->V:I

    .line 559
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->G:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public q(I)V
    .locals 0

    .prologue
    .line 602
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->ab:I

    .line 603
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->K:Ljava/lang/String;

    .line 463
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public r(I)V
    .locals 0

    .prologue
    .line 610
    iput p1, p0, Lcom/cmplay/internalpush/data/c;->ac:I

    .line 611
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->M:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->u:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->N:Ljava/lang/String;

    .line 495
    return-void
.end method

.method public t()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->v:I

    return v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/cmplay/internalpush/data/c;->W:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public u()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->w:I

    return v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/cmplay/internalpush/data/c;->x:J

    return-wide v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/cmplay/internalpush/data/c;->y:Z

    return v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/cmplay/internalpush/data/c;->z:I

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/cmplay/internalpush/data/c;->s:Ljava/lang/String;

    return-object v0
.end method
