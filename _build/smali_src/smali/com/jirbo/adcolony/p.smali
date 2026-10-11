.class public final Lcom/jirbo/adcolony/p;
.super Lcom/jirbo/adcolony/g;
.source "SourceFile"


# instance fields
.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/jirbo/adcolony/g;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/jirbo/adcolony/p;->x:Z

    .line 24
    iput-boolean v1, p0, Lcom/jirbo/adcolony/p;->y:Z

    .line 30
    sput-boolean v1, Lcom/jirbo/adcolony/t;->s:Z

    .line 31
    invoke-static {}, Lcom/jirbo/adcolony/t;->e()V

    .line 32
    const-string v0, "v4vc"

    iput-object v0, p0, Lcom/jirbo/adcolony/p;->f:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/jirbo/adcolony/p;->z:Z

    .line 34
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/p;->g:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/jirbo/adcolony/u;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/p;->h:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/jirbo/adcolony/i;)Lcom/jirbo/adcolony/p;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/jirbo/adcolony/p;->t:Lcom/jirbo/adcolony/i;

    .line 51
    return-object p0
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/jirbo/adcolony/p;->g()Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v1, ""

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jirbo/adcolony/p;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v1, "Confirmation"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/jirbo/adcolony/v;

    invoke-direct {v1, v0, p0}, Lcom/jirbo/adcolony/v;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/p;)V

    sput-object v1, Lcom/jirbo/adcolony/t;->G:Lcom/jirbo/adcolony/ai;

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v1, Lcom/jirbo/adcolony/w;

    invoke-direct {v1, v0, p0}, Lcom/jirbo/adcolony/w;-><init>(Ljava/lang/String;Lcom/jirbo/adcolony/p;)V

    sput-object v1, Lcom/jirbo/adcolony/t;->G:Lcom/jirbo/adcolony/ai;

    goto :goto_0
.end method

.method a(Z)Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method c(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 176
    if-eqz p1, :cond_3

    .line 178
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/af;->b(Lcom/jirbo/adcolony/p;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/t;->f:Z

    .line 181
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->t:Lcom/jirbo/adcolony/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jirbo/adcolony/p;->t:Lcom/jirbo/adcolony/i;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/i;->b(Lcom/jirbo/adcolony/g;)V

    .line 182
    :cond_0
    iput v2, p0, Lcom/jirbo/adcolony/p;->a:I

    .line 196
    :goto_0
    iget v0, p0, Lcom/jirbo/adcolony/p;->a:I

    if-eq v0, v2, :cond_1

    .line 198
    sput-boolean v1, Lcom/jirbo/adcolony/t;->t:Z

    .line 199
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->t:Lcom/jirbo/adcolony/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/p;->t:Lcom/jirbo/adcolony/i;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/i;->a(Lcom/jirbo/adcolony/g;)V

    .line 201
    :cond_1
    return-void

    .line 186
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/jirbo/adcolony/p;->a:I

    goto :goto_0

    .line 191
    :cond_3
    iput v1, p0, Lcom/jirbo/adcolony/p;->a:I

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/af;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, p0, Lcom/jirbo/adcolony/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/af;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 205
    iget v0, p0, Lcom/jirbo/adcolony/p;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 207
    iget-boolean v0, p0, Lcom/jirbo/adcolony/p;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "Result"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/p;->a(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->t:Lcom/jirbo/adcolony/i;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jirbo/adcolony/p;->r:Z

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->t:Lcom/jirbo/adcolony/i;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/i;->a(Lcom/jirbo/adcolony/g;)V

    .line 215
    :cond_1
    sget-boolean v0, Lcom/jirbo/adcolony/t;->s:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/jirbo/adcolony/AdColonyBrowser;->C:Z

    if-nez v0, :cond_3

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/jirbo/adcolony/t;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/jirbo/adcolony/t;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/t;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    :cond_3
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/t;->I:Lcom/jirbo/adcolony/ADCVideo;

    .line 222
    iput-boolean v2, p0, Lcom/jirbo/adcolony/p;->r:Z

    .line 224
    iget-boolean v0, p0, Lcom/jirbo/adcolony/p;->y:Z

    if-nez v0, :cond_4

    sput-boolean v2, Lcom/jirbo/adcolony/t;->t:Z

    .line 225
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 226
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/jirbo/adcolony/p;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/an$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->n:Lcom/jirbo/adcolony/an$g;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$g;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/jirbo/adcolony/p;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/an$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->n:Lcom/jirbo/adcolony/an$g;

    iget v0, v0, Lcom/jirbo/adcolony/an$g;->c:I

    goto :goto_0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/jirbo/adcolony/p;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/an$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->n:Lcom/jirbo/adcolony/an$g;

    iget v0, v0, Lcom/jirbo/adcolony/an$g;->f:I

    goto :goto_0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/jirbo/adcolony/p;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/an$e;

    iget-object v0, v0, Lcom/jirbo/adcolony/an$e;->n:Lcom/jirbo/adcolony/an$g;

    iget v0, v0, Lcom/jirbo/adcolony/an$g;->f:I

    iget-object v1, p0, Lcom/jirbo/adcolony/p;->d:Lcom/jirbo/adcolony/an$e;

    iget v1, v1, Lcom/jirbo/adcolony/an$e;->s:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    iget-boolean v0, p0, Lcom/jirbo/adcolony/p;->z:Z

    if-eqz v0, :cond_1

    .line 127
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "Show attempt on out of date ad object. Please instantiate a new ad object for each ad attempt."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sput v3, Lcom/jirbo/adcolony/t;->aa:I

    .line 131
    invoke-virtual {p0}, Lcom/jirbo/adcolony/p;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    sget v0, Lcom/jirbo/adcolony/t;->aa:I

    iput v0, p0, Lcom/jirbo/adcolony/p;->b:I

    .line 136
    new-instance v0, Lcom/jirbo/adcolony/p$1;

    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/p$1;-><init>(Lcom/jirbo/adcolony/p;Lcom/jirbo/adcolony/af;)V

    .line 143
    const/4 v0, 0x2

    iput v0, p0, Lcom/jirbo/adcolony/p;->a:I

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/p;->t:Lcom/jirbo/adcolony/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/p;->t:Lcom/jirbo/adcolony/i;

    invoke-interface {v0, p0}, Lcom/jirbo/adcolony/i;->a(Lcom/jirbo/adcolony/g;)V

    .line 145
    :cond_2
    iput-boolean v2, p0, Lcom/jirbo/adcolony/p;->z:Z

    goto :goto_0

    .line 148
    :cond_3
    sget v0, Lcom/jirbo/adcolony/t;->aa:I

    iput v0, p0, Lcom/jirbo/adcolony/p;->b:I

    .line 149
    sget-boolean v0, Lcom/jirbo/adcolony/t;->t:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/jirbo/adcolony/p$2;

    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-direct {v0, p0, v1}, Lcom/jirbo/adcolony/p$2;-><init>(Lcom/jirbo/adcolony/p;Lcom/jirbo/adcolony/af;)V

    .line 159
    sput-boolean v3, Lcom/jirbo/adcolony/t;->t:Z

    .line 160
    invoke-virtual {p0}, Lcom/jirbo/adcolony/p;->f()Z

    .line 162
    sput-object p0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    .line 163
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/af;->a(Lcom/jirbo/adcolony/p;)V

    .line 165
    iget-boolean v0, p0, Lcom/jirbo/adcolony/p;->x:Z

    if-eqz v0, :cond_4

    const-string v0, "Confirmation"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/p;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_4
    iput-boolean v2, p0, Lcom/jirbo/adcolony/p;->z:Z

    .line 169
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/p;->c(Z)V

    goto :goto_0
.end method
