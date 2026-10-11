.class public Lcom/duapps/ad/offerwall/a;
.super Ljava/lang/Object;
.source "OfferWallPresenter2.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:I

.field private b:Landroid/os/Handler;

.field private c:Lcom/duapps/ad/offerwall/ui/c;

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/duapps/ad/offerwall/a/b;

.field private l:Z

.field private m:Z

.field private n:Lcom/duapps/ad/f;

.field private o:Lcom/duapps/ad/entity/a/a;

.field private p:J

.field private q:Lcom/duapps/ad/c;

.field private r:Lcom/duapps/ad/offerwall/a/a;


# direct methods
.method public constructor <init>(IILcom/duapps/ad/offerwall/ui/c;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v4, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    .line 76
    new-instance v0, Lcom/duapps/ad/offerwall/a$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/a$1;-><init>(Lcom/duapps/ad/offerwall/a;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->q:Lcom/duapps/ad/c;

    .line 111
    new-instance v0, Lcom/duapps/ad/offerwall/a$2;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/a$2;-><init>(Lcom/duapps/ad/offerwall/a;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->r:Lcom/duapps/ad/offerwall/a/a;

    .line 61
    iput p1, p0, Lcom/duapps/ad/offerwall/a;->d:I

    .line 62
    iput p2, p0, Lcom/duapps/ad/offerwall/a;->e:I

    .line 63
    iput-object p4, p0, Lcom/duapps/ad/offerwall/a;->f:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/duapps/ad/offerwall/a;->c:Lcom/duapps/ad/offerwall/ui/c;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Landroid/os/Handler;

    .line 66
    if-lez p2, :cond_0

    .line 67
    iput-boolean v4, p0, Lcom/duapps/ad/offerwall/a;->h:Z

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/offerwall/a;->e:I

    invoke-virtual {v0, v1}, Lcom/duapps/ad/base/p;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Lcom/duapps/ad/f;

    iget v2, p0, Lcom/duapps/ad/offerwall/a;->e:I

    const-string v5, "offerwall"

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lcom/duapps/ad/f;-><init>(Landroid/content/Context;ILjava/util/List;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->n:Lcom/duapps/ad/f;

    .line 72
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->n:Lcom/duapps/ad/f;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a;->q:Lcom/duapps/ad/c;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/c;)V

    .line 74
    :cond_0
    return-void
.end method

.method public constructor <init>(ILcom/duapps/ad/offerwall/ui/c;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/duapps/ad/offerwall/a;-><init>(IILcom/duapps/ad/offerwall/ui/c;Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a;Lcom/duapps/ad/entity/a/a;)Lcom/duapps/ad/entity/a/a;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/duapps/ad/offerwall/a;->o:Lcom/duapps/ad/entity/a/a;

    return-object p1
.end method

.method private a(Lcom/duapps/ad/entity/a/a;)V
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/a;->b(Lcom/duapps/ad/entity/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->h:Z

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->h:Z

    .line 240
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/duapps/ad/offerwall/a;->c:Lcom/duapps/ad/offerwall/ui/c;

    invoke-interface {v1, v0}, Lcom/duapps/ad/offerwall/ui/c;->b(Ljava/util/List;)V

    .line 246
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/a;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->g:Z

    .line 260
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->c:Lcom/duapps/ad/offerwall/ui/c;

    invoke-interface {v0, p1}, Lcom/duapps/ad/offerwall/ui/c;->a(Ljava/util/List;)V

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/duapps/ad/offerwall/a;->p:J

    sub-long/2addr v0, v2

    .line 233
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a;->c:Lcom/duapps/ad/offerwall/ui/c;

    iget-boolean v3, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    invoke-interface {v2, v3, p1, v0, v1}, Lcom/duapps/ad/offerwall/ui/c;->a(ZIJ)V

    .line 234
    return-void
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a;Lcom/duapps/ad/entity/a/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/a;->a(Lcom/duapps/ad/entity/a/a;)V

    return-void
.end method

.method private b(Lcom/duapps/ad/entity/a/a;)Z
    .locals 2

    .prologue
    .line 255
    if-eqz p1, :cond_0

    const-string v0, "fb"

    invoke-interface {p1}, Lcom/duapps/ad/entity/a/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/entity/a/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->o:Lcom/duapps/ad/entity/a/a;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->l:Z

    .line 216
    return-void
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->g:Z

    return p1
.end method

.method static synthetic e(Lcom/duapps/ad/offerwall/a;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/duapps/ad/offerwall/a;->p:J

    return-wide v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/ui/c;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->c:Lcom/duapps/ad/offerwall/ui/c;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->c:Lcom/duapps/ad/offerwall/ui/c;

    invoke-interface {v0}, Lcom/duapps/ad/offerwall/ui/c;->a()V

    .line 224
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/duapps/ad/offerwall/a;->p:J

    sub-long/2addr v0, v2

    .line 228
    iget-object v2, p0, Lcom/duapps/ad/offerwall/a;->c:Lcom/duapps/ad/offerwall/ui/c;

    iget-boolean v3, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    invoke-interface {v2, v3, v0, v1}, Lcom/duapps/ad/offerwall/ui/c;->a(ZJ)V

    .line 229
    return-void
.end method

.method static synthetic g(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    return-object v0
.end method

.method static synthetic j(Lcom/duapps/ad/offerwall/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 152
    iput-boolean v4, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    .line 153
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->c:Lcom/duapps/ad/offerwall/ui/c;

    iget-boolean v1, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    invoke-interface {v0, v1}, Lcom/duapps/ad/offerwall/ui/c;->a(Z)V

    .line 154
    invoke-virtual {p0, v4}, Lcom/duapps/ad/offerwall/a;->a(I)V

    .line 155
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->h:Z

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->i:Z

    .line 157
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->n:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->c()V

    .line 158
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/offerwall/a;->p:J

    .line 171
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/c/b/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->l:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Lcom/duapps/ad/offerwall/a/b;

    iget v1, p0, Lcom/duapps/ad/offerwall/a;->d:I

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/duapps/ad/offerwall/a;->r:Lcom/duapps/ad/offerwall/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/duapps/ad/offerwall/a/b;-><init>(ILandroid/content/Context;Lcom/duapps/ad/offerwall/a/a;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_3

    if-le p1, v4, :cond_3

    .line 185
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->f()V

    goto :goto_0

    .line 187
    :cond_3
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->g:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->c()Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-direct {p0, v0}, Lcom/duapps/ad/offerwall/a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->c:Lcom/duapps/ad/offerwall/ui/c;

    iget-boolean v1, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    invoke-interface {v0, v1}, Lcom/duapps/ad/offerwall/ui/c;->a(Z)V

    .line 193
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->d()V

    .line 194
    iput p1, p0, Lcom/duapps/ad/offerwall/a;->a:I

    .line 196
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->j:Z

    .line 199
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/a/b;->a(I)V

    .line 200
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    .line 212
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->e()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->n:Lcom/duapps/ad/f;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->n:Lcom/duapps/ad/f;

    invoke-virtual {v0}, Lcom/duapps/ad/f;->d()V

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 268
    invoke-direct {p0, v2}, Lcom/duapps/ad/offerwall/a;->b(I)V

    .line 269
    const-string v0, "OfferWallPresenter2"

    const-string v1, "Poll data timeout."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 272
    invoke-direct {p0, v1}, Lcom/duapps/ad/offerwall/a;->b(I)V

    goto :goto_0
.end method
