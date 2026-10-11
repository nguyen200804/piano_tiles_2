.class public Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;
.super Landroid/app/Activity;
.source "VideoAdDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static c:Lcom/cmcm/orion/picks/impl/g;

.field private static o:Lcom/cmcm/orion/picks/b/b$a;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/RatingBar;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/FrameLayout;

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/cmcm/orion/picks/impl/g;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    return-object v0
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static a(Lcom/cmcm/orion/picks/b/b$a;)V
    .locals 0

    .prologue
    .line 63
    sput-object p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->o:Lcom/cmcm/orion/picks/b/b$a;

    .line 64
    return-void
.end method

.method private static a(Lcom/cmcm/orion/picks/impl/g$a;)V
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v0, p0}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/g$a;)V

    .line 190
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cmcm/orion/picks/impl/g;)Z
    .locals 2

    .prologue
    .line 68
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    .line 72
    :cond_1
    sput-object p1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b()Lcom/cmcm/orion/picks/b/b$a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->o:Lcom/cmcm/orion/picks/b/b$a;

    return-object v0
.end method

.method static synthetic b(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->b:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 316
    sget v2, Lcom/cmcm/orion/adsdk/R$id;->iv_close:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/cmcm/orion/adsdk/R$id;->close_layout:I

    if-ne v1, v2, :cond_2

    .line 317
    :cond_0
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->o:Lcom/cmcm/orion/picks/b/b$a;

    if-eqz v0, :cond_1

    .line 318
    new-instance v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$4;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$4;-><init>(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    sget v2, Lcom/cmcm/orion/adsdk/R$id;->btn_calltoaction:I

    if-eq v1, v2, :cond_3

    sget v2, Lcom/cmcm/orion/adsdk/R$id;->iv_cover_image:I

    if-eq v1, v2, :cond_3

    sget v2, Lcom/cmcm/orion/adsdk/R$id;->iv_icon:I

    if-ne v1, v2, :cond_1

    .line 329
    :cond_3
    sget v2, Lcom/cmcm/orion/adsdk/R$id;->btn_calltoaction:I

    if-ne v1, v2, :cond_5

    .line 330
    const/4 v0, 0x3

    .line 2346
    :cond_4
    :goto_1
    sget-object v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->p()Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->p()Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2347
    sget-object v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v1, p0}, Lcom/cmcm/orion/picks/impl/g;->a(Landroid/content/Context;)V

    .line 2348
    sget-object v1, Lcom/cmcm/orion/picks/impl/g$a;->r:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-static {v1}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a(Lcom/cmcm/orion/picks/impl/g$a;)V

    .line 2350
    sget-object v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->p()Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v1

    .line 2351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->p:J

    sub-long v4, v2, v4

    .line 2352
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2353
    const-string v2, "click_from"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2354
    sget-object v0, Lcom/cmcm/orion/adsdk/b$a;->p:Lcom/cmcm/orion/adsdk/b$a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/a/a/a;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/cmcm/orion/picks/impl/a$1;->a(Lcom/cmcm/orion/adsdk/b$a;Lcom/cmcm/orion/picks/a/a/a;Ljava/lang/String;IJLjava/util/Map;)V

    goto :goto_0

    .line 331
    :cond_5
    sget v2, Lcom/cmcm/orion/adsdk/R$id;->iv_cover_image:I

    if-eq v1, v2, :cond_4

    .line 333
    sget v2, Lcom/cmcm/orion/adsdk/R$id;->iv_icon:I

    if-ne v1, v2, :cond_4

    .line 334
    const/4 v0, 0x2

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    const/4 v3, 0x0

    const v9, 0x3f99999a    # 1.2f

    const/4 v8, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 85
    sget v0, Lcom/cmcm/orion/adsdk/R$layout;->orion_activity_video_detail:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->setContentView(I)V

    .line 86
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->finish()V

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->iv_replay:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->e:Landroid/widget/ImageView;

    .line 1216
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1217
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->f:Landroid/widget/ImageView;

    .line 1218
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->g:Landroid/widget/TextView;

    .line 1219
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->iv_icon:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->h:Landroid/widget/ImageView;

    .line 1220
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->iv_cover_image:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->i:Landroid/widget/ImageView;

    .line 1221
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->tv_download_num:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->j:Landroid/widget/TextView;

    .line 1222
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->btn_calltoaction:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->d:Landroid/widget/Button;

    .line 1223
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->item_rating:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->k:Landroid/widget/RatingBar;

    .line 1224
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->app_download_info:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->l:Landroid/view/ViewGroup;

    .line 1225
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->iv_icon_layout:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->n:Landroid/widget/FrameLayout;

    .line 1226
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->tv_title_layout:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->m:Landroid/widget/FrameLayout;

    .line 1228
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1229
    sget v0, Lcom/cmcm/orion/adsdk/R$id;->close_layout:I

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1232
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/g;->d()Lcom/cmcm/orion/picks/impl/h$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    sget-object v0, Lcom/cmcm/orion/picks/impl/g$a;->a:Lcom/cmcm/orion/picks/impl/g$a;

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a(Lcom/cmcm/orion/picks/impl/g$a;)V

    .line 96
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->p:J

    .line 2101
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v4

    .line 2102
    if-eqz v4, :cond_0

    .line 2107
    invoke-virtual {v4}, Lcom/cmcm/orion/picks/impl/h;->m()Ljava/util/List;

    move-result-object v0

    .line 2108
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2112
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 2115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v3

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmcm/orion/picks/impl/h$a;

    .line 2116
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->a()I

    move-result v6

    const/16 v7, 0x12c

    if-lt v6, v7, :cond_3

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->b()I

    move-result v6

    const/16 v7, 0xfa

    if-lt v6, v7, :cond_3

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->c()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ltz v6, :cond_3

    .line 2121
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->a()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->b()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 2122
    cmpl-float v7, v6, v9

    if-nez v7, :cond_5

    .line 2131
    :goto_2
    if-eqz v0, :cond_4

    .line 2132
    sget-object v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/g;->a(Lcom/cmcm/orion/picks/impl/h$a;)V

    .line 2133
    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/h$a;->c()Ljava/util/List;

    move-result-object v1

    .line 2134
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2135
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$1;-><init>(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;)V

    invoke-static {v2, v0, v8, v1}, Lcom/cmcm/orion/picks/impl/b/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/cmcm/orion/picks/impl/a$a;)V

    .line 2161
    :cond_4
    :goto_3
    invoke-virtual {v4}, Lcom/cmcm/orion/picks/impl/h;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2162
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4}, Lcom/cmcm/orion/picks/impl/h;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$2;-><init>(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;)V

    invoke-static {v0, v1, v8, v2}, Lcom/cmcm/orion/picks/impl/b/a;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/cmcm/orion/picks/impl/a$a;)V

    goto/16 :goto_0

    .line 2125
    :cond_5
    sub-float v7, v6, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v2

    if-gez v7, :cond_8

    .line 2126
    sub-float v1, v6, v9

    :goto_4
    move v2, v1

    move-object v1, v0

    .line 2129
    goto/16 :goto_1

    .line 2155
    :cond_6
    iput-object v3, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a:Ljava/lang/ref/WeakReference;

    goto :goto_3

    .line 2182
    :cond_7
    iput-object v3, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->b:Ljava/lang/ref/WeakReference;

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    move v1, v2

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 200
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 201
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->o:Lcom/cmcm/orion/picks/b/b$a;

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity$3;-><init>(Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;)V

    invoke-static {v0}, Lcom/cmcm/orion/utils/e;->b(Ljava/lang/Runnable;)V

    .line 211
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2236
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2237
    const/4 v1, 0x0

    .line 2238
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2239
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2240
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 2250
    :goto_0
    sget-object v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->h()Ljava/lang/String;

    move-result-object v1

    .line 2251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2252
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->d:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    :cond_0
    sget-object v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->f()Ljava/lang/String;

    move-result-object v1

    .line 2256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "null"

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2257
    :cond_1
    sget-object v1, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->g()Ljava/lang/String;

    move-result-object v1

    .line 2259
    :cond_2
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2261
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2262
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2267
    :cond_3
    :goto_1
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v1

    .line 2268
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->p()Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->p()Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->v()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->p()Lcom/cmcm/orion/picks/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/a/a/a;->u()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2270
    :cond_4
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->a()D

    move-result-wide v2

    double-to-float v0, v2

    .line 2271
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    .line 2272
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2273
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    float-to-double v4, v0

    add-double/2addr v2, v4

    double-to-float v0, v2

    .line 2274
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cmcm/orion/picks/impl/h;->a(Ljava/lang/String;)V

    .line 2276
    :cond_5
    float-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_a

    .line 2277
    iget-object v2, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->k:Landroid/widget/RatingBar;

    invoke-virtual {v2, v0}, Landroid/widget/RatingBar;->setRating(F)V

    .line 2278
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->l:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2281
    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 2282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2283
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2284
    const v2, 0xf4240

    const v3, 0x98967f

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 2285
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 2286
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2287
    invoke-virtual {v1, v0}, Lcom/cmcm/orion/picks/impl/h;->b(Ljava/lang/String;)V

    .line 2289
    :cond_6
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2293
    :cond_7
    :goto_2
    return-void

    .line 2242
    :cond_8
    sget-object v0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->c:Lcom/cmcm/orion/picks/impl/g;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/g;->a()Lcom/cmcm/orion/picks/impl/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cmcm/orion/picks/impl/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2243
    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/i;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2244
    if-eqz v0, :cond_c

    .line 2245
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2263
    :cond_9
    if-eqz v0, :cond_3

    .line 2264
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 2291
    :cond_a
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 2294
    :cond_b
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2295
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2296
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->m:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 2297
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/VideoAdDetailActivity;->m:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_c
    move-object v0, v1

    goto/16 :goto_0
.end method
