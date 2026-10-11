.class public Lcom/jirbo/adcolony/l;
.super Lcom/jirbo/adcolony/g;
.source "SourceFile"


# instance fields
.field x:Lcom/jirbo/adcolony/m;

.field y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/jirbo/adcolony/g;-><init>()V

    .line 29
    sput-boolean v1, Lcom/jirbo/adcolony/t;->s:Z

    .line 30
    invoke-static {}, Lcom/jirbo/adcolony/t;->e()V

    .line 31
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/l;->f:Ljava/lang/String;

    .line 32
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/l;->g:Ljava/lang/String;

    .line 33
    iput-boolean v1, p0, Lcom/jirbo/adcolony/l;->y:Z

    .line 34
    invoke-static {}, Lcom/jirbo/adcolony/u;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/l;->h:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/jirbo/adcolony/g;-><init>()V

    .line 39
    const-string v0, "interstitial"

    iput-object v0, p0, Lcom/jirbo/adcolony/l;->f:Ljava/lang/String;

    .line 40
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/jirbo/adcolony/l;->g:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/jirbo/adcolony/t;->e()V

    .line 42
    iput-object p1, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/l;->y:Z

    .line 44
    invoke-static {}, Lcom/jirbo/adcolony/u;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/l;->h:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method a(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 59
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/af;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 62
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, p1, v0}, Lcom/jirbo/adcolony/af;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/af;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return v0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/jirbo/adcolony/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    const/16 v1, 0xc

    sput v1, Lcom/jirbo/adcolony/t;->aa:I

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, p0, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/af;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method d()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 140
    const-string v1, "interstitial"

    iput-object v1, p0, Lcom/jirbo/adcolony/l;->f:Ljava/lang/String;

    .line 141
    const-string v1, "fullscreen"

    iput-object v1, p0, Lcom/jirbo/adcolony/l;->g:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->t:Lcom/jirbo/adcolony/i;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jirbo/adcolony/l;->r:Z

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->t:Lcom/jirbo/adcolony/i;

    invoke-interface {v1, p0}, Lcom/jirbo/adcolony/i;->a(Lcom/jirbo/adcolony/g;)V

    .line 152
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 155
    sget-boolean v1, Lcom/jirbo/adcolony/t;->s:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/jirbo/adcolony/AdColonyBrowser;->C:Z

    if-nez v1, :cond_4

    move v1, v0

    .line 157
    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/t;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/jirbo/adcolony/t;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->x:Lcom/jirbo/adcolony/m;

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/jirbo/adcolony/l;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jirbo/adcolony/l;->s:Lcom/jirbo/adcolony/o;

    iput-boolean v3, v1, Lcom/jirbo/adcolony/o;->A:Z

    .line 150
    :goto_2
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->x:Lcom/jirbo/adcolony/m;

    iget-object v2, p0, Lcom/jirbo/adcolony/l;->s:Lcom/jirbo/adcolony/o;

    invoke-interface {v1, v3, v2}, Lcom/jirbo/adcolony/m;->b(ZLcom/jirbo/adcolony/o;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/jirbo/adcolony/l;->s:Lcom/jirbo/adcolony/o;

    iput-boolean v0, v1, Lcom/jirbo/adcolony/o;->A:Z

    goto :goto_2

    .line 158
    :cond_3
    sget-object v0, Lcom/jirbo/adcolony/t;->ab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    :cond_4
    iput-boolean v3, p0, Lcom/jirbo/adcolony/l;->r:Z

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/t;->I:Lcom/jirbo/adcolony/ADCVideo;

    .line 163
    sput-boolean v3, Lcom/jirbo/adcolony/t;->t:Z

    .line 164
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method
