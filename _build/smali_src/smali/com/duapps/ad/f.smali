.class public Lcom/duapps/ad/f;
.super Ljava/lang/Object;
.source "DuNativeAd.java"


# instance fields
.field a:Lcom/duapps/ad/k;

.field private b:Landroid/content/Context;

.field private c:Lcom/duapps/ad/entity/a/a;

.field private d:Lcom/duapps/ad/c;

.field private e:I

.field private f:Landroid/view/View;

.field private g:Lcom/duapps/ad/e;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/duapps/ad/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 6

    .prologue
    .line 59
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/duapps/ad/f;-><init>(Landroid/content/Context;ILjava/util/List;ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Lcom/duapps/ad/f$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/f$1;-><init>(Lcom/duapps/ad/f;)V

    iput-object v0, p0, Lcom/duapps/ad/f;->j:Lcom/duapps/ad/b;

    .line 67
    iput-object p1, p0, Lcom/duapps/ad/f;->b:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/duapps/ad/f;->e:I

    .line 69
    iput-object p5, p0, Lcom/duapps/ad/f;->h:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/j;->a(Landroid/content/Context;)Lcom/duapps/ad/j;

    move-result-object v0

    iget v1, p0, Lcom/duapps/ad/f;->e:I

    invoke-virtual {v0, v1, p4, p5}, Lcom/duapps/ad/j;->a(IILjava/lang/String;)Lcom/duapps/ad/g;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/k;

    iput-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/k;

    .line 71
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/k;

    invoke-virtual {v0, p3}, Lcom/duapps/ad/k;->a(Ljava/util/List;)V

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/duapps/ad/base/p;->a(Landroid/content/Context;)Lcom/duapps/ad/base/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/duapps/ad/base/p;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duapps/ad/f;->i:Z

    .line 75
    iget-boolean v0, p0, Lcom/duapps/ad/f;->i:Z

    if-nez v0, :cond_1

    .line 76
    const-string v0, "DAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAP Pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duapps/ad/f;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cannot found in native configuration json file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/f;)Lcom/duapps/ad/c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/duapps/ad/f;->d:Lcom/duapps/ad/c;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/f;Lcom/duapps/ad/entity/a/a;)Lcom/duapps/ad/entity/a/a;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    return-object p1
.end method

.method static synthetic b(Lcom/duapps/ad/f;)Lcom/duapps/ad/e;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/duapps/ad/f;->g:Lcom/duapps/ad/e;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/f;)Lcom/duapps/ad/entity/a/a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/duapps/ad/f;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/duapps/ad/f;->b()V

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/duapps/ad/f;->f:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-virtual {p0}, Lcom/duapps/ad/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/duapps/ad/entity/a/a;->a(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0, p1}, Lcom/duapps/ad/entity/a/a;->a(Landroid/view/View;)V

    .line 138
    :cond_1
    return-void
.end method

.method public a(Lcom/duapps/ad/c;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/duapps/ad/f;->d:Lcom/duapps/ad/c;

    .line 92
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->b()V

    .line 159
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/duapps/ad/f;->i:Z

    if-nez v0, :cond_0

    .line 195
    const-string v0, "DAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAP Pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/duapps/ad/f;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cannot found in native configuration json file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->g(Landroid/content/Context;)Z

    move-result v0

    .line 199
    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/duapps/ad/f;->j:Lcom/duapps/ad/b;

    sget-object v1, Lcom/duapps/ad/a;->c:Lcom/duapps/ad/a;

    invoke-interface {v0, v1}, Lcom/duapps/ad/b;->a(Lcom/duapps/ad/a;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/b;)V

    .line 204
    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/k;

    iget-object v1, p0, Lcom/duapps/ad/f;->j:Lcom/duapps/ad/b;

    invoke-virtual {v0, v1}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/b;)V

    .line 205
    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/k;

    invoke-virtual {v0}, Lcom/duapps/ad/k;->a()V

    .line 206
    iget-object v0, p0, Lcom/duapps/ad/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/m;->h(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->c()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duapps/ad/k;->a(Lcom/duapps/ad/b;)V

    .line 214
    iget-object v0, p0, Lcom/duapps/ad/f;->a:Lcom/duapps/ad/k;

    invoke-virtual {v0}, Lcom/duapps/ad/k;->b()V

    .line 215
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->h()Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->e()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->i()F

    move-result v0

    .line 253
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40900000    # 4.5f

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->j()I

    move-result v0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public l()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    invoke-interface {v0}, Lcom/duapps/ad/entity/a/a;->k()Ljava/lang/Object;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/duapps/ad/entity/a/a;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/duapps/ad/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/f;->c:Lcom/duapps/ad/entity/a/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/duapps/ad/f;->h:Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "interstitial"

    .line 310
    :goto_0
    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/f;->h:Ljava/lang/String;

    const-string v1, "interstitial_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    const-string v0, "interstitial_screen"

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/f;->h:Ljava/lang/String;

    const-string v1, "offerwall"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    const-string v0, "offerwall"

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/f;->h:Ljava/lang/String;

    const-string v1, "native"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    const-string v0, "native"

    goto :goto_0

    .line 310
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method
