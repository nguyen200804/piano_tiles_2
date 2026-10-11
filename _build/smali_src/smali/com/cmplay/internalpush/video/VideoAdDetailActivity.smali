.class public Lcom/cmplay/internalpush/video/VideoAdDetailActivity;
.super Landroid/app/Activity;
.source "VideoAdDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Lcom/cmplay/internalpush/video/a;

.field private static b:Lcom/cmplay/internalpush/video/b;

.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 4

    .prologue
    .line 95
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 110
    const-string v0, "internal_push"

    const-string v1, "getLayoutIdByDisplayType default"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_video_detail:I

    .line 114
    :goto_0
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLayoutIdByDisplayType displayType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    layoutId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return v0

    .line 98
    :pswitch_0
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_video_detail:I

    goto :goto_0

    .line 101
    :pswitch_1
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_video_detail_unityads_style:I

    goto :goto_0

    .line 104
    :pswitch_2
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_video_detail_vungle_style:I

    goto :goto_0

    .line 107
    :pswitch_3
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_video_detail_land:I

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/cmplay/internalpush/video/VideoAdDetailActivity;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 317
    const-string v0, "internal_push_VideoDetai"

    const-string v1, "VideoAdDetailActivity.sendBroadcast  onVideoComplete"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    const-string v1, "com.cmplay.libinnerpushvideo.video.Progress_notify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v1, "video_progress_status"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    const-string v1, "is_complete_view"

    sget-object v2, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/a;->d()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    if-eqz p1, :cond_0

    .line 325
    invoke-static {}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b()V

    .line 327
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/cmplay/internalpush/video/a;Lcom/cmplay/internalpush/video/b;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 55
    :cond_1
    sput-object p1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    .line 56
    sput-object p2, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    .line 57
    if-eqz p3, :cond_2

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->c:Ljava/lang/ref/WeakReference;

    .line 63
    :goto_1
    if-eqz p4, :cond_3

    .line 64
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->d:Ljava/lang/ref/WeakReference;

    .line 69
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    sput-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->c:Ljava/lang/ref/WeakReference;

    goto :goto_1

    .line 66
    :cond_3
    sput-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->d:Ljava/lang/ref/WeakReference;

    goto :goto_2
.end method

.method public static b()V
    .locals 4

    .prologue
    .line 331
    sget-object v0, Lcom/cmplay/base/util/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v1, "tiles2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity$2;

    invoke-direct {v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity$2;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/cmplay/base/util/d;->a(Ljava/lang/Runnable;J)V

    .line 341
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x4

    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/b;->i()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 138
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->setRequestedOrientation(I)V

    .line 140
    :cond_0
    return-void

    .line 136
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/cmplay/internalpush/R$id;->iv_replay:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->g:Landroid/widget/ImageView;

    .line 144
    sget v0, Lcom/cmplay/internalpush/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->h:Landroid/widget/ImageView;

    .line 145
    sget v0, Lcom/cmplay/internalpush/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->i:Landroid/widget/TextView;

    .line 146
    sget v0, Lcom/cmplay/internalpush/R$id;->iv_icon:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->j:Landroid/widget/ImageView;

    .line 147
    sget v0, Lcom/cmplay/internalpush/R$id;->iv_cover_image:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->k:Landroid/widget/ImageView;

    .line 148
    sget v0, Lcom/cmplay/internalpush/R$id;->vast_pic_star:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->l:Landroid/widget/ImageView;

    .line 149
    sget v0, Lcom/cmplay/internalpush/R$id;->tv_download_num:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->m:Landroid/widget/TextView;

    .line 150
    sget v0, Lcom/cmplay/internalpush/R$id;->btn_calltoaction:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->f:Landroid/widget/Button;

    .line 151
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->c()V

    .line 158
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 161
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x0

    .line 163
    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 164
    iget-object v1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->k:Landroid/widget/ImageView;

    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 175
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->i:Landroid/widget/TextView;

    sget-object v2, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->d:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 178
    iget-object v1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->j:Landroid/widget/ImageView;

    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 184
    :cond_1
    :goto_1
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/b;->v()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 185
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ivStarImage :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   tvDownLoadNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    :cond_2
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/b;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 196
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 199
    const v1, 0xf4240

    const v2, 0x98967f

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 200
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v1, v0}, Lcom/cmplay/internalpush/video/a;->a(Ljava/lang/String;)V

    .line 207
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_3
    const/4 v0, 0x3

    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/b;->i()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 216
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->f:Landroid/widget/Button;

    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_4
    return-void

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    .line 168
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e:Landroid/graphics/Bitmap;

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 179
    :cond_7
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 205
    :cond_8
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/b;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 211
    :cond_9
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private f()V
    .locals 4

    .prologue
    .line 282
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    new-instance v3, Lcom/cmplay/internalpush/video/VideoAdDetailActivity$1;

    invoke-direct {v3, p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity$1;-><init>(Lcom/cmplay/internalpush/video/VideoAdDetailActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cmplay/internalpush/video/a;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 292
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 228
    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 238
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 240
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 248
    :goto_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 242
    :goto_1
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 243
    const-string v1, "detail_page"

    const-string v2, "createVideoThumbnail  exception"

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 245
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const-string v1, "detail_page"

    const-string v2, "createVideoThumbnail  exception"

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :catch_2
    move-exception v1

    goto :goto_2

    .line 241
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 12

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 277
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    sget-object v3, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/video/b;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/video/b;->d()J

    move-result-wide v4

    const-string v6, ""

    const/4 v7, 0x0

    sget-object v8, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/video/b;->x()I

    move-result v8

    sget-object v9, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/video/b;->m()J

    move-result-wide v10

    long-to-int v9, v10

    int-to-long v9, v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a(Z)V

    .line 279
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    const/4 v7, 0x0

    const/4 v12, 0x1

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 255
    sget v2, Lcom/cmplay/internalpush/R$id;->iv_replay:I

    if-ne v0, v2, :cond_1

    .line 256
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/a;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v1, v12}, Lcom/cmplay/internalpush/video/a;->a(Z)V

    .line 259
    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/cmplay/internalpush/video/a;->d(Z)V

    .line 260
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v12, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(Landroid/content/Context;ZLjava/lang/String;)Z

    .line 261
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->finish()V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    sget v2, Lcom/cmplay/internalpush/R$id;->iv_close:I

    if-ne v0, v2, :cond_2

    .line 264
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x3

    sget-object v3, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/video/b;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/video/b;->d()J

    move-result-wide v4

    const-string v6, ""

    sget-object v8, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/video/b;->x()I

    move-result v8

    sget-object v9, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/video/b;->m()J

    move-result-wide v10

    long-to-int v9, v10

    int-to-long v9, v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 265
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->finish()V

    .line 266
    invoke-direct {p0, v12}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a(Z)V

    goto :goto_0

    .line 267
    :cond_2
    sget v2, Lcom/cmplay/internalpush/R$id;->btn_calltoaction:I

    if-eq v0, v2, :cond_3

    sget v2, Lcom/cmplay/internalpush/R$id;->iv_cover_image:I

    if-eq v0, v2, :cond_3

    sget v2, Lcom/cmplay/internalpush/R$id;->iv_icon:I

    if-ne v0, v2, :cond_0

    .line 268
    :cond_3
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->f()V

    .line 270
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v2, 0x2

    sget-object v3, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/video/b;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/video/b;->d()J

    move-result-wide v4

    const-string v6, ""

    sget-object v8, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/video/b;->x()I

    move-result v8

    sget-object v9, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/video/b;->m()J

    move-result-wide v10

    long-to-int v9, v10

    int-to-long v9, v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->c()V

    .line 128
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 80
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_video_detail:I

    .line 81
    sget-object v1, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    if-eqz v1, :cond_0

    .line 82
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/b;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a(I)I

    move-result v0

    .line 84
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->setContentView(I)V

    .line 85
    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a:Lcom/cmplay/internalpush/video/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    if-nez v0, :cond_2

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->finish()V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->d()V

    .line 91
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    sget-object v3, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/video/b;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/video/b;->d()J

    move-result-wide v4

    const-string v6, ""

    const/4 v7, 0x0

    sget-object v8, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/video/b;->x()I

    move-result v8

    sget-object v9, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->b:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/video/b;->m()J

    move-result-wide v10

    long-to-int v9, v10

    int-to-long v9, v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    const-string v1, "com.cmplay.libinnerpushvideo.video.Progress_notify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string v1, "video_progress_status"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e:Landroid/graphics/Bitmap;

    .line 305
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 308
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 309
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->e()V

    .line 122
    return-void
.end method
