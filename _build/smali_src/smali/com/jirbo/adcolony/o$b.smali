.class Lcom/jirbo/adcolony/o$b;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/jirbo/adcolony/o;


# direct methods
.method public constructor <init>(Lcom/jirbo/adcolony/o;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    .line 1267
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1268
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/o$b;->setBackgroundColor(I)V

    .line 1269
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1277
    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    invoke-virtual {p0}, Lcom/jirbo/adcolony/o$b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/jirbo/adcolony/o;->d:Landroid/view/ViewGroup;

    .line 1280
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1282
    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v1, v1, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v1, v1, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/o;->j:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/jirbo/adcolony/o$b;->a:Z

    .line 1284
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/o$b;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_b

    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/o;->t:Z

    if-eqz v1, :cond_b

    .line 1286
    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/o;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v1, v1, Lcom/jirbo/adcolony/o;->j:Z

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    invoke-virtual {v2}, Lcom/jirbo/adcolony/o;->c()I

    move-result v2

    if-le v1, v2, :cond_3

    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    .line 1287
    invoke-virtual {v2}, Lcom/jirbo/adcolony/o;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_3

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    invoke-virtual {v1}, Lcom/jirbo/adcolony/o;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_3

    .line 1289
    iget-boolean v0, p0, Lcom/jirbo/adcolony/o$b;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->E:Lcom/jirbo/adcolony/l;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/l;->a(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->o:Z

    if-eqz v0, :cond_2

    .line 1291
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->o:Z

    if-nez v0, :cond_7

    .line 1294
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "[ADC] Native Ad Starting"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 1295
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/o;->d()V

    .line 1296
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/o;->o:Z

    .line 1297
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->E:Lcom/jirbo/adcolony/l;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/l;->f:Ljava/lang/String;

    .line 1298
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->E:Lcom/jirbo/adcolony/l;

    const-string v1, "native"

    iput-object v1, v0, Lcom/jirbo/adcolony/l;->g:Ljava/lang/String;

    .line 1319
    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/jirbo/adcolony/o$b;->a:Z

    .line 1325
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->p:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/jirbo/adcolony/aq;->c()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1327
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/o$b;->setVisibility(I)V

    .line 1328
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1329
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/o;->p:Z

    .line 1332
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->p:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1334
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/o$b;->setVisibility(I)V

    .line 1335
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1346
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->u:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->p:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/jirbo/adcolony/o$b;->invalidate()V

    .line 1347
    :cond_6
    return-void

    .line 1301
    :cond_7
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->q:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/jirbo/adcolony/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/jirbo/adcolony/t;->q:Z

    if-nez v0, :cond_9

    .line 1304
    sget-object v0, Lcom/jirbo/adcolony/al;->c:Lcom/jirbo/adcolony/al;

    const-string v1, "[ADC] Native Ad Resuming"

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 1305
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, v0, Lcom/jirbo/adcolony/af;->d:Lcom/jirbo/adcolony/as;

    const-string v1, "video_resumed"

    iget-object v2, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v2, v2, Lcom/jirbo/adcolony/o;->E:Lcom/jirbo/adcolony/l;

    invoke-virtual {v0, v1, v2}, Lcom/jirbo/adcolony/as;->b(Ljava/lang/String;Lcom/jirbo/adcolony/g;)V

    .line 1306
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->m:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/o;->c(Z)V

    .line 1307
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget v1, v1, Lcom/jirbo/adcolony/o;->au:F

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/o;->a(F)V

    .line 1308
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v1, v1, Lcom/jirbo/adcolony/o;->E:Lcom/jirbo/adcolony/l;

    iget v1, v1, Lcom/jirbo/adcolony/l;->m:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1309
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_0

    .line 1311
    :cond_9
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->o:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v1, v1, Lcom/jirbo/adcolony/o;->E:Lcom/jirbo/adcolony/l;

    iget-object v1, v1, Lcom/jirbo/adcolony/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v3}, Lcom/jirbo/adcolony/af;->a(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->ay:Z

    if-nez v0, :cond_3

    .line 1313
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/o;->p:Z

    .line 1314
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/o$b;->setVisibility(I)V

    .line 1315
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1323
    :cond_b
    iput-boolean v3, p0, Lcom/jirbo/adcolony/o$b;->a:Z

    goto/16 :goto_1

    .line 1337
    :cond_c
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->p:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/o;->q:Z

    if-eqz v0, :cond_5

    .line 1340
    :cond_d
    const/16 v0, 0xff

    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1341
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1342
    iget-object v0, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->H:Lcom/jirbo/adcolony/c;

    iget-object v1, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget v1, v1, Lcom/jirbo/adcolony/o;->am:I

    iget-object v2, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v2, v2, Lcom/jirbo/adcolony/o;->H:Lcom/jirbo/adcolony/c;

    iget v2, v2, Lcom/jirbo/adcolony/c;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget v2, v2, Lcom/jirbo/adcolony/o;->an:I

    iget-object v3, p0, Lcom/jirbo/adcolony/o$b;->b:Lcom/jirbo/adcolony/o;

    iget-object v3, v3, Lcom/jirbo/adcolony/o;->H:Lcom/jirbo/adcolony/c;

    iget v3, v3, Lcom/jirbo/adcolony/c;->g:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/jirbo/adcolony/c;->a(Landroid/graphics/Canvas;II)V

    goto/16 :goto_2
.end method
