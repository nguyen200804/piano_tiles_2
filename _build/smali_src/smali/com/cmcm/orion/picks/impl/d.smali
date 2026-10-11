.class public Lcom/cmcm/orion/picks/impl/d;
.super Lcom/cmcm/orion/picks/impl/b;
.source "BrandVCViewP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cmcm/orion/picks/impl/a$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/Runnable;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/cmcm/orion/picks/b/a$a;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ProgressBar;

.field private i:Z

.field private j:I

.field private k:Lcom/cmcm/orion/picks/impl/g;

.field private l:Lcom/cmcm/orion/picks/impl/h;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcom/cmcm/orion/picks/a/a/a;

.field private r:Ljava/lang/String;

.field private s:Landroid/widget/TextView;

.field private t:Z

.field private u:Lcom/cmcm/orion/picks/b/a;

.field private v:I

.field private w:Lcom/cmcm/orion/picks/impl/f;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/cmcm/orion/picks/impl/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcm/orion/picks/impl/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cmcm/orion/picks/impl/f;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/cmcm/orion/picks/impl/b;-><init>(Landroid/content/Context;)V

    .line 59
    iput v1, p0, Lcom/cmcm/orion/picks/impl/d;->v:I

    .line 447
    new-instance v0, Lcom/cmcm/orion/picks/impl/d$5;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/d$5;-><init>(Lcom/cmcm/orion/picks/impl/d;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->B:Ljava/lang/Runnable;

    .line 504
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/impl/d;->C:Z

    .line 505
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/impl/d;->D:Z

    .line 506
    iput-boolean v1, p0, Lcom/cmcm/orion/picks/impl/d;->E:Z

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->F:Z

    .line 70
    if-eqz p2, :cond_0

    .line 71
    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    .line 1099
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cmcm/orion/adsdk/R$layout;->brand_vc_video:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1100
    new-instance v1, Lcom/cmcm/orion/picks/impl/d$1;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/d$1;-><init>(Lcom/cmcm/orion/picks/impl/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1107
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_mp4_viewer:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    .line 1108
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->button_skip:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->c:Landroid/widget/TextView;

    .line 1109
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_button_seconds:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->d:Landroid/widget/TextView;

    .line 1110
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_button_learn_more:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->g:Landroid/widget/TextView;

    .line 1111
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->h:Landroid/widget/ProgressBar;

    .line 1112
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_sponsored_view:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->s:Landroid/widget/TextView;

    .line 1113
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_button_mute_unmute:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->f:Landroid/widget/ImageButton;

    .line 1114
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_replay_layout:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->x:Landroid/widget/RelativeLayout;

    .line 1115
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_mp4_viewer_cover:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->y:Landroid/view/View;

    .line 1116
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_mp4_viewer_shadow:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->z:Landroid/view/View;

    .line 1119
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_replay_button:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1120
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1121
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1122
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1123
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v0, p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    new-instance v1, Lcom/cmcm/orion/picks/impl/d$2;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/d$2;-><init>(Lcom/cmcm/orion/picks/impl/d;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 1138
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    new-instance v1, Lcom/cmcm/orion/picks/impl/d$3;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/d$3;-><init>(Lcom/cmcm/orion/picks/impl/d;)V

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 77
    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/cmcm/orion/picks/impl/f;

    invoke-direct {v0}, Lcom/cmcm/orion/picks/impl/f;-><init>()V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/d;)Lcom/cmcm/orion/picks/b/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->u:Lcom/cmcm/orion/picks/b/a;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 254
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-boolean v0, p2, Lcom/cmcm/orion/picks/impl/f$a;->a:Z

    if-eqz v0, :cond_8

    .line 259
    if-nez p3, :cond_3

    .line 260
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v0, v0

    iget-wide v2, p2, Lcom/cmcm/orion/picks/impl/f$a;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 268
    if-eqz v0, :cond_0

    .line 269
    iget v1, p2, Lcom/cmcm/orion/picks/impl/f$a;->c:I

    if-eq v1, v5, :cond_4

    iget v1, p2, Lcom/cmcm/orion/picks/impl/f$a;->c:I

    .line 270
    :goto_2
    iget v2, p2, Lcom/cmcm/orion/picks/impl/f$a;->e:I

    if-eq v2, v5, :cond_5

    iget v2, p2, Lcom/cmcm/orion/picks/impl/f$a;->e:I

    .line 271
    :goto_3
    iget v3, p2, Lcom/cmcm/orion/picks/impl/f$a;->d:I

    if-eq v3, v5, :cond_6

    iget v3, p2, Lcom/cmcm/orion/picks/impl/f$a;->d:I

    .line 272
    :goto_4
    iget v4, p2, Lcom/cmcm/orion/picks/impl/f$a;->f:I

    if-eq v4, v5, :cond_7

    iget v4, p2, Lcom/cmcm/orion/picks/impl/f$a;->f:I

    .line 273
    :goto_5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 269
    :cond_4
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 270
    :cond_5
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 271
    :cond_6
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    .line 272
    :cond_7
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 276
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cmcm/orion/picks/impl/d;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/cmcm/orion/picks/impl/d;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->j:I

    return v0
.end method

.method static synthetic e(Lcom/cmcm/orion/picks/impl/d;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    return v0
.end method

.method static synthetic f(Lcom/cmcm/orion/picks/impl/d;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    return v0
.end method

.method static synthetic g(Lcom/cmcm/orion/picks/impl/d;)Lcom/cmcm/orion/picks/impl/g;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    return-object v0
.end method

.method static synthetic h(Lcom/cmcm/orion/picks/impl/d;)Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/cmcm/orion/picks/impl/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->l:Lcom/cmcm/orion/picks/impl/h;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h;->k()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/cmcm/orion/picks/impl/d;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->t:Z

    return v0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->l:Lcom/cmcm/orion/picks/impl/h;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cmcm/orion/picks/b/a$a;->a(Ljava/lang/String;)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->u:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/g;->a(Landroid/content/Context;)V

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->r:Lcom/cmcm/orion/picks/impl/g$a;

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    iget v3, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 348
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->u:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->ar:Lcom/cmcm/orion/adsdk/b$a;

    const/4 v2, 0x0

    iget v3, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 350
    :cond_3
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->l()V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->g()V

    .line 358
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->h()V

    .line 365
    :cond_0
    return-void
.end method

.method private m()Z
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->l()V

    .line 82
    return-void
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 599
    return-void
.end method

.method public final a(I)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x3

    const/4 v6, 0x0

    .line 401
    if-ne p1, v1, :cond_0

    .line 402
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    if-nez v0, :cond_6

    .line 404
    iput-boolean v6, p0, Lcom/cmcm/orion/picks/impl/d;->t:Z

    .line 415
    :cond_0
    :goto_0
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->j:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->t:Z

    if-nez v0, :cond_2

    if-eq p1, v7, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    iget v1, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    if-eq v0, v1, :cond_2

    .line 422
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/g;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->e:Lcom/cmcm/orion/picks/impl/g$a;

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    iget v3, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 427
    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 429
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    iget v1, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/g;->a(I)V

    .line 431
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/a$a;->d()V

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->x:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->h:Lcom/cmcm/orion/picks/impl/f$a;

    invoke-direct {p0, v0, v1, v6}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 436
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->f:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->c:Lcom/cmcm/orion/picks/impl/f$a;

    invoke-direct {p0, v0, v1, v7}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 437
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 438
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->b:Lcom/cmcm/orion/picks/impl/f$a;

    invoke-direct {p0, v0, v1, v6}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->f:Lcom/cmcm/orion/picks/impl/f$a;

    invoke-direct {p0, v0, v1, v7}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 441
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->z:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_5
    iput p1, p0, Lcom/cmcm/orion/picks/impl/d;->j:I

    .line 445
    return-void

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->i()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 408
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/cmcm/orion/picks/impl/d;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 411
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->t:Z

    goto/16 :goto_0
.end method

.method public final a(II)V
    .locals 8

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProgressInUiThread: totalLength = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; currentPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    iput p1, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    .line 463
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    if-ge p2, v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    if-nez v0, :cond_2

    const/16 v0, 0x1f4

    if-gt p2, v0, :cond_0

    .line 473
    :cond_2
    iput p2, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    .line 475
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    .line 1509
    if-lez v0, :cond_3

    if-gtz p2, :cond_8

    .line 477
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->o:Z

    if-nez v0, :cond_4

    .line 478
    iput-boolean v6, p0, Lcom/cmcm/orion/picks/impl/d;->o:Z

    .line 479
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->a:Lcom/cmcm/orion/picks/impl/g$a;

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 480
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->m:Lcom/cmcm/orion/picks/impl/g$a;

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 481
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    iget v1, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/g;->b(I)V

    .line 484
    :cond_4
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->j:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->j:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 486
    :cond_5
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/cmcm/orion/picks/impl/g;->a(IJ)V

    .line 490
    :cond_6
    if-eqz p2, :cond_7

    .line 491
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->v:I

    div-int/lit16 v1, p2, 0x3e8

    sub-int/2addr v0, v1

    .line 492
    if-lez v0, :cond_7

    .line 493
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->d:Landroid/widget/TextView;

    const-string v2, "%ds"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->f:Lcom/cmcm/orion/picks/impl/f$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 498
    :cond_7
    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    if-lez v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->h:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 500
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1533
    :cond_8
    int-to-float v1, p2

    mul-float/2addr v1, v3

    div-float/2addr v1, v7

    .line 1534
    int-to-float v2, v0

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    .line 1535
    div-float/2addr v1, v2

    .line 1514
    const/high16 v2, 0x3e800000    # 0.25f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_9

    cmpg-float v2, v1, v4

    if-gez v2, :cond_9

    .line 1515
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v2, Lcom/cmcm/orion/picks/impl/g$a;->f:Lcom/cmcm/orion/picks/impl/g$a;

    int-to-long v4, p2

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 1516
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->C:Z

    if-nez v0, :cond_3

    .line 1517
    iput-boolean v6, p0, Lcom/cmcm/orion/picks/impl/d;->C:Z

    goto/16 :goto_1

    .line 1519
    :cond_9
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_a

    cmpg-float v2, v1, v5

    if-gez v2, :cond_a

    .line 1520
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v2, Lcom/cmcm/orion/picks/impl/g$a;->g:Lcom/cmcm/orion/picks/impl/g$a;

    int-to-long v4, p2

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 1521
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->D:Z

    if-nez v0, :cond_3

    .line 1522
    iput-boolean v6, p0, Lcom/cmcm/orion/picks/impl/d;->D:Z

    goto/16 :goto_1

    .line 1524
    :cond_a
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_3

    .line 1525
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v2, Lcom/cmcm/orion/picks/impl/g$a;->h:Lcom/cmcm/orion/picks/impl/g$a;

    int-to-long v4, p2

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 1526
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->E:Z

    if-nez v0, :cond_3

    .line 1527
    iput-boolean v6, p0, Lcom/cmcm/orion/picks/impl/d;->E:Z

    goto/16 :goto_1
.end method

.method public final a(Lcom/cmcm/orion/picks/b/a$a;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    .line 151
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/b/a;Ljava/lang/String;Lcom/cmcm/orion/picks/a/a/a;Ljava/util/HashMap;Lcom/cmcm/orion/picks/impl/h;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cmcm/orion/picks/b/a;",
            "Ljava/lang/String;",
            "Lcom/cmcm/orion/picks/a/a/a;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cmcm/orion/picks/impl/h;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 154
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 158
    :cond_1
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/d;->u:Lcom/cmcm/orion/picks/b/a;

    .line 159
    iput-object p3, p0, Lcom/cmcm/orion/picks/impl/d;->q:Lcom/cmcm/orion/picks/a/a/a;

    .line 160
    iput-object p2, p0, Lcom/cmcm/orion/picks/impl/d;->r:Ljava/lang/String;

    .line 161
    iput-object p5, p0, Lcom/cmcm/orion/picks/impl/d;->l:Lcom/cmcm/orion/picks/impl/h;

    .line 162
    new-instance v0, Lcom/cmcm/orion/picks/impl/g;

    invoke-direct {v0, p5}, Lcom/cmcm/orion/picks/impl/g;-><init>(Lcom/cmcm/orion/picks/impl/h;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    .line 163
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v0, p6}, Lcom/cmcm/orion/picks/impl/g;->a(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p3}, Lcom/cmcm/orion/picks/a/a/a;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 167
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(Ljava/lang/String;)Z

    move-result v1

    .line 171
    if-nez v1, :cond_3

    .line 172
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_3
    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->A:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->j()V

    .line 178
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/d;->l:Lcom/cmcm/orion/picks/impl/h;

    invoke-virtual {v2}, Lcom/cmcm/orion/picks/impl/h;->j()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b(I)V

    .line 183
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(FF)V

    .line 184
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcm/orion/picks/impl/d;->i:Z

    .line 185
    iget-boolean v1, p0, Lcom/cmcm/orion/picks/impl/d;->i:Z

    if-nez v1, :cond_8

    .line 186
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->f:Landroid/widget/ImageButton;

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->brand_volume_on:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 190
    :goto_1
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v1, p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 191
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v1, p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 193
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 194
    invoke-virtual {p5}, Lcom/cmcm/orion/picks/impl/h;->h()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/d;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cmcm/orion/adsdk/R$string;->brand_learn_more_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 202
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/d;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_5
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/i;->e(Ljava/lang/String;)I

    move-result v0

    .line 206
    iput v0, p0, Lcom/cmcm/orion/picks/impl/d;->v:I

    .line 207
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->d:Landroid/widget/TextView;

    const-string v2, "%ds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/cmcm/orion/picks/impl/d;->v:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->h:Lcom/cmcm/orion/picks/impl/f$a;

    iget-wide v2, v1, Lcom/cmcm/orion/picks/impl/f$a;->b:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 211
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->h:Lcom/cmcm/orion/picks/impl/f$a;

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/cmcm/orion/picks/impl/f$a;->b:J

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->b:Lcom/cmcm/orion/picks/impl/f$a;

    iget-wide v2, v1, Lcom/cmcm/orion/picks/impl/f$a;->b:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    .line 216
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->b:Lcom/cmcm/orion/picks/impl/f$a;

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/cmcm/orion/picks/impl/f$a;->b:J

    .line 220
    :cond_7
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->x:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->h:Lcom/cmcm/orion/picks/impl/f$a;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 221
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->b:Lcom/cmcm/orion/picks/impl/f$a;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 222
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->f:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->c:Lcom/cmcm/orion/picks/impl/f$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 223
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->h:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->d:Lcom/cmcm/orion/picks/impl/f$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 224
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->e:Lcom/cmcm/orion/picks/impl/f$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 225
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->g:Lcom/cmcm/orion/picks/impl/f$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 226
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->f:Lcom/cmcm/orion/picks/impl/f$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 228
    new-instance v0, Lcom/cmcm/orion/picks/impl/d$4;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/d$4;-><init>(Lcom/cmcm/orion/picks/impl/d;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/cmcm/orion/utils/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 188
    :cond_8
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->f:Landroid/widget/ImageButton;

    sget v2, Lcom/cmcm/orion/adsdk/R$drawable;->brand_volume_off:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 199
    :catch_0
    move-exception v1

    const-string v1, "LEARN MORE"

    goto/16 :goto_2
.end method

.method public final a_()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->A:Ljava/lang/String;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/i;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 87
    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->k()V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v2, v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->y:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->z:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b_()V
    .locals 6

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->i:Z

    if-nez v0, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/i;->a(Landroid/content/Context;)F

    move-result v0

    .line 381
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/i;->b(Landroid/content/Context;)F

    move-result v1

    .line 382
    div-float/2addr v0, v1

    .line 383
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v1, v0, v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(FF)V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/i;->a(Landroid/content/Context;)F

    move-result v0

    .line 388
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/i;->b(Landroid/content/Context;)F

    move-result v1

    .line 389
    div-float/2addr v0, v1

    .line 390
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v1, v0, v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(FF)V

    .line 391
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->i:Z

    .line 392
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->i:Z

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->f:Landroid/widget/ImageButton;

    sget v1, Lcom/cmcm/orion/adsdk/R$drawable;->brand_volume_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 394
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->j:Lcom/cmcm/orion/picks/impl/g$a;

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    iget v3, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    goto :goto_0

    .line 391
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final d()Lcom/cmcm/orion/picks/impl/g;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    return-object v0
.end method

.method public final g()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->i:Z

    if-eqz v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->b:Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;

    invoke-virtual {v0, v1, v1}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a(FF)V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->i:Z

    .line 374
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->f:Landroid/widget/ImageButton;

    sget v1, Lcom/cmcm/orion/adsdk/R$drawable;->brand_volume_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 375
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->i:Lcom/cmcm/orion/picks/impl/g$a;

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    iget v3, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x8

    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 288
    sget v1, Lcom/cmcm/orion/adsdk/R$id;->button_skip:I

    if-ne v0, v1, :cond_4

    .line 289
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->u:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    iget v1, p0, Lcom/cmcm/orion/picks/impl/d;->v:I

    mul-int/lit16 v1, v1, 0x3e8

    if-ge v0, v1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/a$a;->b()V

    .line 296
    :cond_2
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->p:Z

    if-nez v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->k:Lcom/cmcm/orion/picks/impl/g;

    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->v:Lcom/cmcm/orion/picks/impl/g$a;

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->m:I

    iget v3, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v4, v3

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;IJ)V

    .line 298
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->u:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->P:Lcom/cmcm/orion/adsdk/b$a;

    iget v2, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->p:Z

    .line 302
    :cond_3
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->l()V

    goto :goto_0

    .line 303
    :cond_4
    sget v1, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_button_learn_more:I

    if-ne v0, v1, :cond_5

    .line 304
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->j()V

    goto :goto_0

    .line 305
    :cond_5
    sget v1, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_button_mute_unmute:I

    if-ne v0, v1, :cond_7

    .line 306
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->i:Z

    if-eqz v0, :cond_6

    .line 308
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/d;->b_()V

    goto :goto_0

    .line 310
    :cond_6
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/d;->g()V

    goto :goto_0

    .line 313
    :cond_7
    sget v1, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_replay_button:I

    if-ne v0, v1, :cond_8

    .line 314
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/d;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 315
    iput v6, p0, Lcom/cmcm/orion/picks/impl/d;->n:I

    .line 316
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->k()V

    .line 320
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->x:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->h:Lcom/cmcm/orion/picks/impl/f$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 321
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->b:Lcom/cmcm/orion/picks/impl/f$a;

    invoke-direct {p0, v0, v1, v2}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 322
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->f:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/d;->w:Lcom/cmcm/orion/picks/impl/f;

    iget-object v1, v1, Lcom/cmcm/orion/picks/impl/f;->c:Lcom/cmcm/orion/picks/impl/f$a;

    invoke-direct {p0, v0, v1, v6}, Lcom/cmcm/orion/picks/impl/d;->a(Landroid/view/View;Lcom/cmcm/orion/picks/impl/f$a;I)V

    .line 323
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/a$a;->c()V

    goto/16 :goto_0

    .line 326
    :cond_8
    sget v1, Lcom/cmcm/orion/adsdk/R$id;->brand_vc_mp4_viewer:I

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->u:Lcom/cmcm/orion/picks/b/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/b/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/d;->j()V

    goto/16 :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v4, 0x0

    .line 547
    invoke-super {p0, p1}, Lcom/cmcm/orion/picks/impl/b;->onWindowVisibilityChanged(I)V

    .line 549
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/d;->F:Z

    if-eqz v0, :cond_1

    .line 550
    iput-boolean v4, p0, Lcom/cmcm/orion/picks/impl/d;->F:Z

    .line 551
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->u:Lcom/cmcm/orion/picks/b/a;

    sget-object v1, Lcom/cmcm/orion/adsdk/b$a;->g:Lcom/cmcm/orion/adsdk/b$a;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/cmcm/orion/picks/b/a;->a(Lcom/cmcm/orion/adsdk/b$a;IJ)V

    .line 553
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->l:Lcom/cmcm/orion/picks/impl/h;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->l:Lcom/cmcm/orion/picks/impl/h;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h;->i()V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/d;->e:Lcom/cmcm/orion/picks/b/a$a;

    invoke-interface {v0}, Lcom/cmcm/orion/picks/b/a$a;->a()V

    .line 561
    :cond_1
    return-void
.end method
