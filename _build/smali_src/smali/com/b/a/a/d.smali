.class Lcom/b/a/a/d;
.super Ljava/lang/Object;
.source "InternalGameAgent.java"

# interfaces
.implements Lcom/b/a/f;


# instance fields
.field private a:Lcom/b/a/g;

.field private b:Lcom/b/a/a/c;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private x:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/b/a/b;->a()Lcom/b/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/g;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    .line 22
    const/16 v0, 0x64

    iput v0, p0, Lcom/b/a/a/d;->c:I

    .line 23
    iput v1, p0, Lcom/b/a/a/d;->d:I

    .line 25
    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/g;

    invoke-virtual {v0, v1}, Lcom/b/a/g;->a(I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/d;->e:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/a/d;->f:I

    .line 29
    iput v1, p0, Lcom/b/a/a/d;->g:I

    .line 31
    const-string v0, "level"

    iput-object v0, p0, Lcom/b/a/a/d;->h:Ljava/lang/String;

    .line 32
    const-string v0, "pay"

    iput-object v0, p0, Lcom/b/a/a/d;->i:Ljava/lang/String;

    .line 33
    const-string v0, "buy"

    iput-object v0, p0, Lcom/b/a/a/d;->j:Ljava/lang/String;

    .line 34
    const-string v0, "use"

    iput-object v0, p0, Lcom/b/a/a/d;->k:Ljava/lang/String;

    .line 35
    const-string v0, "bonus"

    iput-object v0, p0, Lcom/b/a/a/d;->l:Ljava/lang/String;

    .line 37
    const-string v0, "item"

    iput-object v0, p0, Lcom/b/a/a/d;->m:Ljava/lang/String;

    .line 38
    const-string v0, "cash"

    iput-object v0, p0, Lcom/b/a/a/d;->n:Ljava/lang/String;

    .line 39
    const-string v0, "coin"

    iput-object v0, p0, Lcom/b/a/a/d;->o:Ljava/lang/String;

    .line 40
    const-string v0, "source"

    iput-object v0, p0, Lcom/b/a/a/d;->p:Ljava/lang/String;

    .line 41
    const-string v0, "amount"

    iput-object v0, p0, Lcom/b/a/a/d;->q:Ljava/lang/String;

    .line 42
    const-string v0, "user_level"

    iput-object v0, p0, Lcom/b/a/a/d;->r:Ljava/lang/String;

    .line 43
    const-string v0, "bonus_source"

    iput-object v0, p0, Lcom/b/a/a/d;->s:Ljava/lang/String;

    .line 45
    const-string v0, "level"

    iput-object v0, p0, Lcom/b/a/a/d;->t:Ljava/lang/String;

    .line 46
    const-string v0, "status"

    iput-object v0, p0, Lcom/b/a/a/d;->u:Ljava/lang/String;

    .line 47
    const-string v0, "duration"

    iput-object v0, p0, Lcom/b/a/a/d;->v:Ljava/lang/String;

    .line 49
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    iput-object v0, p0, Lcom/b/a/a/d;->w:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/b/a/a/b;->a:Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/b/a/a/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/b/a/a/d$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/a/d$2;-><init>(Lcom/b/a/a/d;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/a/d;)Lcom/b/a/g;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/g;

    return-object v0
.end method

.method static synthetic c(Lcom/b/a/a/d;)Lcom/b/a/a/c;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 278
    const-string v0, "MobclickAgent"

    const-string v1, "App resume from background"

    invoke-static {v0, v1}, Lb/a/ap;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 281
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    sget-boolean v0, Lcom/b/a/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->b()V

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v0, "MobclickAgent"

    const-string v1, "Context is null, can\'t init GameAgent"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/g;

    invoke-virtual {v0, p0}, Lcom/b/a/g;->a(Lcom/b/a/f;)V

    .line 64
    new-instance v0, Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/b/a/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    iput-object p1, v0, Lcom/b/a/a/c;->a:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/b/a/a/d$1;

    invoke-direct {v0, p0, p1}, Lcom/b/a/a/d$1;-><init>(Lcom/b/a/a/d;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 292
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    sget-boolean v0, Lcom/b/a/a/b;->a:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->a()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 179
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lb/a/ap;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/b/a/a/d;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
