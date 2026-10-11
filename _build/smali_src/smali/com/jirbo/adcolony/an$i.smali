.class Lcom/jirbo/adcolony/an$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field A:Ljava/lang/String;

.field B:Ljava/lang/String;

.field C:Ljava/lang/String;

.field D:Lcom/jirbo/adcolony/a$g;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Lcom/jirbo/adcolony/a$g;

    invoke-direct {v0}, Lcom/jirbo/adcolony/a$g;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    return-void
.end method


# virtual methods
.method a(Lcom/jirbo/adcolony/a$g;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 209
    if-nez p1, :cond_0

    .line 277
    :goto_0
    return v3

    .line 211
    :cond_0
    const-string v0, "replay"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->a:Ljava/lang/String;

    .line 212
    const-string v0, "card_shown"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->b:Ljava/lang/String;

    .line 213
    const-string v0, "html5_interaction"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->c:Ljava/lang/String;

    .line 214
    const-string v0, "cancel"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->d:Ljava/lang/String;

    .line 215
    const-string v0, "download"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->e:Ljava/lang/String;

    .line 216
    const-string v0, "skip"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->f:Ljava/lang/String;

    .line 217
    const-string v0, "info"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->g:Ljava/lang/String;

    .line 218
    const-string v0, "custom_event"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->h:Ljava/lang/String;

    .line 219
    const-string v0, "midpoint"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->i:Ljava/lang/String;

    .line 220
    const-string v0, "card_dissolved"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->j:Ljava/lang/String;

    .line 221
    const-string v0, "start"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->k:Ljava/lang/String;

    .line 222
    const-string v0, "third_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->l:Ljava/lang/String;

    .line 223
    const-string v0, "complete"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->m:Ljava/lang/String;

    .line 224
    const-string v0, "continue"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->n:Ljava/lang/String;

    .line 225
    const-string v0, "in_video_engagement"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->o:Ljava/lang/String;

    .line 226
    const-string v0, "reward_v4vc"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->p:Ljava/lang/String;

    .line 227
    const-string v0, "first_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->r:Ljava/lang/String;

    .line 228
    const-string v0, "v4iap"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->q:Ljava/lang/String;

    .line 231
    const-string v0, "video_expanded"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->s:Ljava/lang/String;

    .line 232
    const-string v0, "sound_mute"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->t:Ljava/lang/String;

    .line 233
    const-string v0, "sound_unmute"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->u:Ljava/lang/String;

    .line 234
    const-string v0, "video_paused"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->v:Ljava/lang/String;

    .line 235
    const-string v0, "video_resumed"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->w:Ljava/lang/String;

    .line 236
    const-string v0, "native_start"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->x:Ljava/lang/String;

    .line 237
    const-string v0, "native_first_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->y:Ljava/lang/String;

    .line 238
    const-string v0, "native_midpoint"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->z:Ljava/lang/String;

    .line 239
    const-string v0, "native_third_quartile"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->A:Ljava/lang/String;

    .line 240
    const-string v0, "native_complete"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->B:Ljava/lang/String;

    .line 241
    const-string v0, "native_overlay_click"

    invoke-virtual {p1, v0, v1}, Lcom/jirbo/adcolony/a$g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/an$i;->C:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "replay"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "card_shown"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "html5_interaction"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "cancel"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "download"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "skip"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "info"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "custom_event"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "midpoint"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "card_dissolved"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "start"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "third_quartile"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "complete"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "continue"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "in_video_engagement"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "reward_v4vc"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "first_quartile"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "v4iap"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "video_expanded"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "sound_mute"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "sound_unmute"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "video_paused"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "video_resumed"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "native_start"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "native_first_quartile"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "native_midpoint"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "native_third_quartile"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "native_complete"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/jirbo/adcolony/an$i;->D:Lcom/jirbo/adcolony/a$g;

    const-string v1, "native_overlay_click"

    iget-object v2, p0, Lcom/jirbo/adcolony/an$i;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/a$g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
