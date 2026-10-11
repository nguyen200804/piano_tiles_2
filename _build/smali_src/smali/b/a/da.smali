.class public Lb/a/da;
.super Ljava/lang/Object;
.source "Sender.java"


# instance fields
.field private a:Lb/a/bm;

.field private b:Lb/a/ch;

.field private final c:I

.field private d:Landroid/content/Context;

.field private e:Lb/a/b;

.field private f:Lb/a/cv;

.field private g:Lb/a/am;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/b;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lb/a/da;->c:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/da;->h:Z

    .line 54
    invoke-static {p1}, Lb/a/bm;->a(Landroid/content/Context;)Lb/a/bm;

    move-result-object v0

    iput-object v0, p0, Lb/a/da;->a:Lb/a/bm;

    .line 55
    invoke-static {p1}, Lb/a/ch;->a(Landroid/content/Context;)Lb/a/ch;

    move-result-object v0

    iput-object v0, p0, Lb/a/da;->b:Lb/a/ch;

    .line 57
    iput-object p1, p0, Lb/a/da;->d:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lb/a/da;->e:Lb/a/b;

    .line 59
    new-instance v0, Lb/a/cv;

    invoke-direct {v0, p1}, Lb/a/cv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/da;->f:Lb/a/cv;

    .line 60
    iget-object v0, p0, Lb/a/da;->f:Lb/a/cv;

    iget-object v1, p0, Lb/a/da;->e:Lb/a/b;

    invoke-virtual {v0, v1}, Lb/a/cv;->a(Lb/a/ct;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lb/a/da;[B)I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lb/a/da;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 195
    new-instance v1, Lb/a/ai;

    invoke-direct {v1}, Lb/a/ai;-><init>()V

    .line 196
    new-instance v0, Lb/a/ba;

    new-instance v2, Lb/a/bl$a;

    invoke-direct {v2}, Lb/a/bl$a;-><init>()V

    invoke-direct {v0, v2}, Lb/a/ba;-><init>(Lb/a/bt;)V

    .line 199
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lb/a/ba;->a(Lb/a/ay;[B)V

    .line 201
    iget v0, v1, Lb/a/ai;->a:I

    if-ne v0, v4, :cond_0

    .line 202
    iget-object v0, p0, Lb/a/da;->b:Lb/a/ch;

    invoke-virtual {v1}, Lb/a/ai;->d()Lb/a/z;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/a/ch;->b(Lb/a/z;)V

    .line 203
    iget-object v0, p0, Lb/a/da;->b:Lb/a/ch;

    invoke-virtual {v0}, Lb/a/ch;->c()V

    .line 206
    :cond_0
    const-string v0, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send log:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lb/a/ai;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lb/a/ap;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    iget v0, v1, Lb/a/ai;->a:I

    if-ne v0, v4, :cond_1

    .line 212
    const/4 v0, 0x2

    .line 214
    :goto_1
    return v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method static synthetic a(Lb/a/da;)Lb/a/cv;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lb/a/da;->f:Lb/a/cv;

    return-object v0
.end method

.method static synthetic b(Lb/a/da;)Lb/a/b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lb/a/da;->e:Lb/a/b;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lb/a/da;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/k;->a(Landroid/content/Context;)Lcom/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/k;->h()Lcom/b/a/k$a;

    move-result-object v0

    .line 88
    new-instance v1, Lb/a/da$1;

    invoke-direct {v1, p0}, Lb/a/da$1;-><init>(Lb/a/da;)V

    invoke-virtual {v0, v1}, Lcom/b/a/k$a;->a(Lcom/b/a/k$b;)V

    .line 139
    return-void
.end method

.method private b(Lb/a/am;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 219
    if-nez p1, :cond_0

    .line 232
    :goto_0
    return-object v0

    .line 222
    :cond_0
    :try_start_0
    new-instance v1, Lb/a/bd;

    invoke-direct {v1}, Lb/a/bd;-><init>()V

    invoke-virtual {v1, p1}, Lb/a/bd;->a(Lb/a/ay;)[B

    move-result-object v1

    .line 223
    sget-boolean v2, Lb/a/ap;->a:Z

    if-eqz v2, :cond_1

    .line 224
    const-string v2, "MobclickAgent"

    invoke-virtual {p1}, Lb/a/am;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lb/a/ap;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    .line 227
    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    const-string v2, "MobclickAgent"

    const-string v3, "Fail to serialize log ..."

    invoke-static {v2, v3, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lb/a/da;->a:Lb/a/bm;

    invoke-virtual {v0}, Lb/a/bm;->a()V

    .line 143
    iget-object v0, p0, Lb/a/da;->g:Lb/a/am;

    .line 144
    iget-object v1, p0, Lb/a/da;->a:Lb/a/bm;

    invoke-virtual {v1}, Lb/a/bm;->b()Lb/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/am;->a(Lb/a/x;)Lb/a/am;

    .line 145
    invoke-direct {p0, v0}, Lb/a/da;->b(Lb/a/am;)[B

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    const-string v0, "MobclickAgent"

    const-string v1, "message is null"

    invoke-static {v0, v1}, Lb/a/ap;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-boolean v1, p0, Lb/a/da;->h:Z

    if-nez v1, :cond_2

    .line 154
    iget-object v1, p0, Lb/a/da;->d:Landroid/content/Context;

    iget-object v2, p0, Lb/a/da;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lb/a/at;->a(Landroid/content/Context;Ljava/lang/String;[B)Lb/a/at;

    move-result-object v0

    .line 159
    :goto_1
    invoke-virtual {v0}, Lb/a/at;->c()[B

    move-result-object v1

    .line 160
    iget-object v0, p0, Lb/a/da;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/k;->a(Landroid/content/Context;)Lcom/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/k;->f()V

    .line 165
    iget-object v0, p0, Lb/a/da;->f:Lb/a/cv;

    invoke-virtual {v0, v1}, Lb/a/cv;->a([B)[B

    move-result-object v0

    .line 166
    if-nez v0, :cond_3

    .line 167
    const/4 v0, 0x1

    .line 172
    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    iget-boolean v0, p0, Lb/a/da;->i:Z

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lb/a/da;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/b/a/k;->a(Landroid/content/Context;)Lcom/b/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/k;->b([B)V

    .line 188
    :cond_1
    const-string v0, "MobclickAgent"

    const-string v1, "connection error"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v1, p0, Lb/a/da;->d:Landroid/content/Context;

    iget-object v2, p0, Lb/a/da;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/b/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lb/a/at;->b(Landroid/content/Context;Ljava/lang/String;[B)Lb/a/at;

    move-result-object v0

    goto :goto_1

    .line 169
    :cond_3
    invoke-direct {p0, v0}, Lb/a/da;->a([B)I

    move-result v0

    goto :goto_2

    .line 174
    :pswitch_1
    iget-object v0, p0, Lb/a/da;->e:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    iget-object v0, p0, Lb/a/da;->e:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->g()V

    .line 178
    :cond_4
    iget-object v0, p0, Lb/a/da;->a:Lb/a/bm;

    invoke-virtual {v0}, Lb/a/bm;->c()V

    .line 179
    iget-object v0, p0, Lb/a/da;->e:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->f()V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lb/a/da;->e:Lb/a/b;

    invoke-virtual {v0}, Lb/a/b;->f()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lb/a/da;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lb/a/da;->i:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lb/a/da;->g:Lb/a/am;

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lb/a/da;->c()V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lb/a/da;->b()V

    goto :goto_0
.end method

.method public a(Lb/a/am;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lb/a/da;->g:Lb/a/am;

    .line 65
    return-void
.end method

.method public a(Lb/a/cy;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lb/a/da;->b:Lb/a/ch;

    invoke-virtual {v0, p1}, Lb/a/ch;->a(Lb/a/cy;)V

    .line 76
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lb/a/da;->h:Z

    .line 69
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lb/a/da;->i:Z

    .line 72
    return-void
.end method
