.class public final Lcom/cmcm/orion/picks/impl/player/a;
.super Ljava/lang/Object;
.source "Mp4Player.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmcm/orion/picks/impl/player/a$a;,
        Lcom/cmcm/orion/picks/impl/player/a$g;,
        Lcom/cmcm/orion/picks/impl/player/a$k;,
        Lcom/cmcm/orion/picks/impl/player/a$e;,
        Lcom/cmcm/orion/picks/impl/player/a$d;,
        Lcom/cmcm/orion/picks/impl/player/a$h;,
        Lcom/cmcm/orion/picks/impl/player/a$f;,
        Lcom/cmcm/orion/picks/impl/player/a$c;,
        Lcom/cmcm/orion/picks/impl/player/a$b;,
        Lcom/cmcm/orion/picks/impl/player/a$i;,
        Lcom/cmcm/orion/picks/impl/player/a$l;,
        Lcom/cmcm/orion/picks/impl/player/a$j;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/media/MediaPlayer;

.field private c:Lcom/cmcm/orion/picks/impl/player/a$j;

.field private d:Ljava/lang/String;

.field private e:Lcom/cmcm/orion/picks/impl/a$a;

.field private f:Lcom/cmcm/orion/picks/impl/a$a;

.field private g:Landroid/media/MediaPlayer$OnErrorListener;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:F

.field private l:F

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/impl/player/a;->h:Z

    .line 64
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a;->a:Landroid/content/Context;

    .line 65
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->b:Landroid/media/MediaPlayer;

    .line 66
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/player/a$j;-><init>(Lcom/cmcm/orion/picks/impl/player/a;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->c:Lcom/cmcm/orion/picks/impl/player/a$j;

    .line 67
    iput-boolean v2, p0, Lcom/cmcm/orion/picks/impl/player/a;->i:Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->j:Z

    .line 69
    iput v1, p0, Lcom/cmcm/orion/picks/impl/player/a;->k:F

    .line 70
    iput v1, p0, Lcom/cmcm/orion/picks/impl/player/a;->l:F

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/player/a;I)I
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/cmcm/orion/picks/impl/player/a;->m:I

    return p1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/player/a;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a;->b:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/a$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->e:Lcom/cmcm/orion/picks/impl/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/player/a;II)V
    .locals 1

    .prologue
    .line 26
    .line 1127
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/cmcm/orion/picks/impl/player/a$2;-><init>(Lcom/cmcm/orion/picks/impl/player/a;II)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/a$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->f:Lcom/cmcm/orion/picks/impl/a$a;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/impl/player/a;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->m:I

    return v0
.end method

.method static synthetic d(Lcom/cmcm/orion/picks/impl/player/a;)Lcom/cmcm/orion/picks/impl/player/a$j;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->c:Lcom/cmcm/orion/picks/impl/player/a$j;

    return-object v0
.end method

.method static synthetic e(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->b:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic f(Lcom/cmcm/orion/picks/impl/player/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/cmcm/orion/picks/impl/player/a;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->h:Z

    return v0
.end method

.method static synthetic h(Lcom/cmcm/orion/picks/impl/player/a;)F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->k:F

    return v0
.end method

.method static synthetic i(Lcom/cmcm/orion/picks/impl/player/a;)F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->l:F

    return v0
.end method

.method static synthetic j(Lcom/cmcm/orion/picks/impl/player/a;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/cmcm/orion/picks/impl/player/a;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->g:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->c:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    return v0
.end method

.method public final a(FF)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 143
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 144
    iput v1, p0, Lcom/cmcm/orion/picks/impl/player/a;->k:F

    .line 151
    :goto_0
    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    .line 152
    iput v1, p0, Lcom/cmcm/orion/picks/impl/player/a;->l:F

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_2
    return-void

    .line 145
    :cond_1
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 146
    iput v2, p0, Lcom/cmcm/orion/picks/impl/player/a;->k:F

    goto :goto_0

    .line 148
    :cond_2
    iput p1, p0, Lcom/cmcm/orion/picks/impl/player/a;->k:F

    goto :goto_0

    .line 153
    :cond_3
    cmpl-float v0, p2, v2

    if-lez v0, :cond_4

    .line 154
    iput v2, p0, Lcom/cmcm/orion/picks/impl/player/a;->l:F

    goto :goto_1

    .line 156
    :cond_4
    iput p2, p0, Lcom/cmcm/orion/picks/impl/player/a;->l:F

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/cmcm/orion/picks/impl/player/a;->m:I

    .line 75
    return-void
.end method

.method public final a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a;->g:Landroid/media/MediaPlayer$OnErrorListener;

    .line 185
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->c:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Landroid/view/Surface;)V

    .line 105
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a;->e:Lcom/cmcm/orion/picks/impl/a$a;

    .line 109
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a;->d:Ljava/lang/String;

    .line 87
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->c:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;)I

    move-result v0

    if-nez v0, :cond_1

    .line 88
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/a;->b(I)V

    .line 89
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->c:Lcom/cmcm/orion/picks/impl/player/a$j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(Lcom/cmcm/orion/picks/impl/player/a$j;I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->c:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/a$j;->b()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->h:Z

    .line 139
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->c:Lcom/cmcm/orion/picks/impl/player/a$j;

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/impl/player/a$j;->a(I)V

    .line 97
    return-void
.end method

.method public final b(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/a;->f:Lcom/cmcm/orion/picks/impl/a$a;

    .line 113
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/a;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
