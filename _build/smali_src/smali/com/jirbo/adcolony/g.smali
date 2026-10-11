.class public abstract Lcom/jirbo/adcolony/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Lcom/jirbo/adcolony/an$e;

.field e:Lcom/jirbo/adcolony/an$a;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:D

.field l:D

.field m:I

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Lcom/jirbo/adcolony/o;

.field t:Lcom/jirbo/adcolony/i;

.field u:Lcom/jirbo/adcolony/k;

.field v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/jirbo/adcolony/g;->a:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/g;->f:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/g;->g:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/g;->h:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/g;->i:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/g;->j:Ljava/lang/String;

    .line 32
    iput-wide v2, p0, Lcom/jirbo/adcolony/g;->k:D

    .line 33
    iput-wide v2, p0, Lcom/jirbo/adcolony/g;->l:D

    .line 47
    sget-object v0, Lcom/jirbo/adcolony/k;->a:Lcom/jirbo/adcolony/k;

    iput-object v0, p0, Lcom/jirbo/adcolony/g;->u:Lcom/jirbo/adcolony/k;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    iget v1, p0, Lcom/jirbo/adcolony/g;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract a(Z)Z
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/jirbo/adcolony/g;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget v0, p0, Lcom/jirbo/adcolony/g;->a:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/g;->a(Z)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    move v0, v2

    goto :goto_0

    .line 105
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/jirbo/adcolony/af;->f(Ljava/lang/String;)Lcom/jirbo/adcolony/an$e;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/g;->d:Lcom/jirbo/adcolony/an$e;

    .line 106
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/g;->d:Lcom/jirbo/adcolony/an$e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$e;->j()Lcom/jirbo/adcolony/an$a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    .line 107
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->d:Lcom/jirbo/adcolony/an$e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/an$e;->i()Lcom/jirbo/adcolony/an$a;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "replay"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "card_shown"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "html5_interaction"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "cancel"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "download"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "skip"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "info"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "custom_event"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "card_dissolved"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "start"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "in_video_engagement"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "reward_v4vc"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "v4iap"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "video_expanded"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "sound_mute"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "sound_unmute"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->u:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "video_paused"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->v:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "video_resumed"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->w:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "native_start"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->x:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "native_first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->y:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "native_midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->z:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "native_third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->v:Ljava/util/HashMap;

    const-string v2, "native_overlay_click"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->w:Lcom/jirbo/adcolony/an$i;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$i;->C:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "replay"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "card_shown"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "html5_interaction"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "cancel"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "download"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "skip"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "card_dissolved"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "start"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "continue"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "in_video_engagement"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "reward_v4vc"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "v4iap"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "video_expanded"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "sound_mute"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "sound_unmute"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "video_paused"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "video_resumed"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "native_start"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "native_first_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "native_midpoint"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "native_third_quartile"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "native_complete"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/jirbo/adcolony/g;->w:Ljava/util/HashMap;

    const-string v2, "native_overlay_click"

    iget-object v3, p0, Lcom/jirbo/adcolony/g;->e:Lcom/jirbo/adcolony/an$a;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$a;->t:Lcom/jirbo/adcolony/an$ag;

    iget-object v3, v3, Lcom/jirbo/adcolony/an$ag;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 168
    goto/16 :goto_0
.end method

.method abstract c()Z
.end method

.method abstract d()V
.end method

.method abstract e()Z
.end method

.method f()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/g;->b(Z)Z

    move-result v0

    return v0
.end method
