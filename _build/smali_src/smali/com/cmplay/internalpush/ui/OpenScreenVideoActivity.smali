.class public Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;
.super Landroid/app/Activity;
.source "OpenScreenVideoActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cmplay/internalpush/video/InnerPushReceiver$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private A:Ljava/lang/Runnable;

.field private final a:Ljava/lang/String;

.field private b:Lcom/cmplay/internalpush/video/InnerPushTextureView;

.field private c:Landroid/graphics/SurfaceTexture;

.field private d:Lcom/cmplay/internalpush/video/a;

.field private e:Lcom/cmplay/internalpush/video/c;

.field private f:Lcom/cmplay/internalpush/data/g;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:Ljava/util/Timer;

.field private k:Ljava/util/TimerTask;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/graphics/Bitmap;

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/a/a/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, "internal_push_open_Video"

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g:Landroid/graphics/Bitmap;

    .line 60
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h:Landroid/graphics/Bitmap;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->i:Z

    .line 67
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->m:Landroid/widget/ImageView;

    .line 68
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->n:Landroid/widget/ImageView;

    .line 70
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->p:Landroid/widget/ImageView;

    .line 73
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->s:Landroid/widget/ImageView;

    .line 74
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->t:Landroid/graphics/Bitmap;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->w:Z

    .line 85
    new-instance v0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$1;-><init>(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->A:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->u:I

    return p1
.end method

.method static synthetic a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Lcom/cmplay/internalpush/video/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 100
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    const-string v1, "info_for_show"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->i:Z

    return p1
.end method

.method private b(I)I
    .locals 3

    .prologue
    .line 138
    const-string v0, "internal_push"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLayoutIdByDisplayType displayType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    packed-switch p1, :pswitch_data_0

    .line 145
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_open_screen_video:I

    .line 148
    :goto_0
    return v0

    .line 142
    :pswitch_0
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_open_screen_video_land:I

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->v:I

    return p1
.end method

.method static synthetic b(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->u:I

    return v0
.end method

.method static synthetic d(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->A:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->v:I

    return v0
.end method

.method private e()V
    .locals 11

    .prologue
    const/16 v1, 0x8

    const/4 v8, 0x0

    .line 160
    new-instance v0, Lcom/cmplay/internalpush/video/c;

    invoke-direct {v0}, Lcom/cmplay/internalpush/video/c;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    .line 161
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/video/c;->setAudioStreamType(I)V

    .line 163
    sget v0, Lcom/cmplay/internalpush/R$id;->video_full_screen:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/video/InnerPushTextureView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b:Lcom/cmplay/internalpush/video/InnerPushTextureView;

    .line 164
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b:Lcom/cmplay/internalpush/video/InnerPushTextureView;

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/video/InnerPushTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 166
    sget v0, Lcom/cmplay/internalpush/R$id;->video_image:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->s:Landroid/widget/ImageView;

    .line 168
    sget v0, Lcom/cmplay/internalpush/R$id;->video_full_screen_progress:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->l:Landroid/widget/ProgressBar;

    .line 170
    sget v0, Lcom/cmplay/internalpush/R$id;->try_btn:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->n:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    sget v0, Lcom/cmplay/internalpush/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->m:Landroid/widget/ImageView;

    .line 174
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    sget v0, Lcom/cmplay/internalpush/R$id;->btn_play:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->o:Landroid/widget/ImageView;

    .line 177
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget v0, Lcom/cmplay/internalpush/R$id;->ad_tag:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->p:Landroid/widget/ImageView;

    .line 182
    sget v0, Lcom/cmplay/internalpush/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->q:Landroid/widget/TextView;

    .line 183
    sget v0, Lcom/cmplay/internalpush/R$id;->iv_icon:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->r:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    if-eqz v0, :cond_3

    .line 187
    sget v0, Lcom/cmplay/internalpush/R$id;->vast_video_view_container:I

    .line 188
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;

    .line 190
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a(F)V

    .line 192
    invoke-direct {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f()V

    .line 194
    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->t:Landroid/graphics/Bitmap;

    .line 198
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g:Landroid/graphics/Bitmap;

    .line 205
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h:Landroid/graphics/Bitmap;

    .line 213
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->n:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->n:Landroid/widget/ImageView;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(Landroid/view/View;I)V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/g;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/g;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/data/g;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    iget-object v9, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/g;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 228
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 194
    goto/16 :goto_0
.end method

.method private e(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 529
    if-eqz p1, :cond_0

    .line 530
    const-string v0, "info_for_show"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    const-string v1, "internal_push_open_Video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseIntent   dataJson:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    new-instance v1, Lcom/cmplay/internalpush/data/g;

    invoke-direct {v1, v0}, Lcom/cmplay/internalpush/data/g;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    .line 537
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Lcom/cmplay/internalpush/video/a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    if-eqz v0, :cond_0

    .line 250
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/g;->i()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 251
    const/4 v0, 0x0

    .line 255
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->setRequestedOrientation(I)V

    .line 257
    :cond_0
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 381
    const-string v0, "internal_push_open_Video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumePlay    mPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mSurfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->c:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->y:Z

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->start()V

    .line 384
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->l:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    const-string v0, "internal_push_open_Video"

    const-string v1, "resumePlay --> play"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->j:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->j:Ljava/util/Timer;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->k:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 555
    new-instance v0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$5;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$5;-><init>(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->k:Ljava/util/TimerTask;

    .line 566
    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->i:Z

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->x:Z

    .line 288
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->c:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 289
    const-string v0, "internal_push_open_Video"

    const-string v1, "play mTexture is null"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    if-nez v0, :cond_2

    .line 294
    const-string v0, "internal_push_open_Video"

    const-string v1, "play Model is null"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_2
    const/4 v2, 0x0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->reset()V

    .line 300
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/c;->a(Landroid/graphics/SurfaceTexture;)V

    .line 302
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->v()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/video/c;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 305
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    new-instance v2, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$2;

    invoke-direct {v2, p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$2;-><init>(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)V

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/video/c;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 313
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    new-instance v2, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$3;

    invoke-direct {v2, p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$3;-><init>(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)V

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/video/c;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 323
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    new-instance v2, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;

    invoke-direct {v2, p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity$4;-><init>(Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;)V

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/video/c;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 337
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    if-eqz v1, :cond_0

    .line 345
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    goto :goto_0

    .line 339
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 340
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 341
    const-string v0, "internal_push_open_Video"

    const-string v2, "Exception  MediaPlayer"

    invoke-static {v0, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 343
    if-eqz v1, :cond_0

    .line 345
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 346
    :catch_2
    move-exception v0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_3

    .line 345
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 347
    :cond_3
    :goto_3
    throw v0

    .line 346
    :catch_3
    move-exception v1

    goto :goto_3

    .line 343
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 339
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method protected a(FZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 501
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->w:Z

    .line 502
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    iget-boolean v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->w:Z

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/video/a;->d(Z)V

    .line 503
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->u:I

    .line 504
    invoke-static {p0}, Lcom/cmplay/internalpush/video/d;->b(Landroid/content/Context;)F

    move-result v0

    .line 505
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    move v0, v1

    .line 506
    :goto_1
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v1, v0, v0}, Lcom/cmplay/internalpush/video/c;->setVolume(FF)V

    .line 507
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 505
    :cond_1
    div-float v0, p1, v0

    goto :goto_1
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 543
    const-string v0, "internal_push_open_Video"

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d()V

    .line 545
    invoke-direct {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h()V

    .line 546
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->j:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->k:Ljava/util/TimerTask;

    add-int/lit16 v2, p1, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 548
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b()V

    .line 512
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x3

    .line 237
    const-string v0, "scaleX"

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/a/a/i;->a(Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v0

    .line 238
    const-string v1, "scaleY"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Lcom/a/a/i;->a(Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v1

    .line 239
    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    invoke-static {v2, v3}, Lcom/a/a/i;->a(Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v2

    .line 240
    new-array v3, v4, [Lcom/a/a/i;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {p1, v3}, Lcom/a/a/g;->a(Ljava/lang/Object;[Lcom/a/a/i;)Lcom/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->z:Lcom/a/a/g;

    .line 241
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->z:Lcom/a/a/g;

    invoke-virtual {v0, v5}, Lcom/a/a/g;->a(I)V

    .line 242
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->z:Lcom/a/a/g;

    invoke-virtual {v0, v5}, Lcom/a/a/g;->b(I)V

    .line 243
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->z:Lcom/a/a/g;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/g;->a(J)Lcom/a/a/g;

    .line 244
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->z:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->a()V

    .line 245
    return-void

    .line 237
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 238
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 239
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->x:Z

    .line 368
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/a;->b(Z)V

    .line 372
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->l:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 373
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "internal_push_open_Video"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause: set play time ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/c;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/c;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/a;->a(I)V

    .line 376
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->pause()V

    goto :goto_0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 419
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/n;->d(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 420
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->finish()V

    .line 421
    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 520
    invoke-static {p0}, Lcom/cmplay/internalpush/video/d;->a(Landroid/content/Context;)F

    move-result v1

    .line 521
    iget-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(FZ)V

    .line 522
    return-void

    .line 521
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 569
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 571
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->j:Ljava/util/Timer;

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->k:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->k:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 575
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->k:Ljava/util/TimerTask;

    .line 577
    :cond_1
    return-void
.end method

.method public d(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public finish()V
    .locals 11

    .prologue
    .line 465
    const-string v0, "internal_push_open_Video"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/g;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/data/g;->d()J

    move-result-wide v4

    const-string v6, ""

    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cmplay/internalpush/n;->b()I

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/g;->m()J

    move-result-wide v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 468
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 469
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 393
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/n;->c(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)Z

    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 395
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 400
    sget v1, Lcom/cmplay/internalpush/R$id;->btn_play:I

    if-ne v1, v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->start()V

    .line 402
    iget v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->v:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(I)V

    .line 403
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    sget v1, Lcom/cmplay/internalpush/R$id;->try_btn:I

    if-ne v1, v0, :cond_2

    .line 408
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/n;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 409
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->finish()V

    goto :goto_0

    .line 410
    :cond_2
    sget v1, Lcom/cmplay/internalpush/R$id;->close_btn:I

    if-ne v1, v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->c()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
    invoke-direct {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f()V

    .line 263
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const-string v0, "internal_push_open_Video"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e(Landroid/content/Intent;)V

    .line 113
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_open_screen_video:I

    .line 114
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    if-eqz v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->f:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b(I)I

    move-result v0

    .line 117
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 122
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 123
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 124
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 126
    invoke-direct {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e()V

    .line 128
    new-instance v0, Lcom/cmplay/internalpush/video/a;

    invoke-direct {v0}, Lcom/cmplay/internalpush/video/a;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    .line 130
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(FZ)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-static {p0}, Lcom/cmplay/internalpush/video/d;->a(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a(FZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    const-string v0, "internal_push_open_Video"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->z:Lcom/a/a/g;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->z:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->b()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 432
    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->t:Landroid/graphics/Bitmap;

    .line 433
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->release()V

    .line 439
    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g:Landroid/graphics/Bitmap;

    .line 444
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 446
    :cond_3
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 447
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->h:Landroid/graphics/Bitmap;

    .line 449
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 451
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 452
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 456
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b()V

    .line 458
    const/4 v0, 0x0

    .line 460
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->setIntent(Landroid/content/Intent;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 356
    const-string v0, "internal_push_open_Video"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {p0}, Lcom/cmplay/internalpush/video/InnerPushReceiver;->b(Lcom/cmplay/internalpush/video/InnerPushReceiver$a;)V

    .line 358
    invoke-static {p0}, Lcom/cmplay/internalpush/video/InnerPushReceiver;->b(Landroid/content/Context;)V

    .line 359
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->b()V

    .line 364
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 277
    const-string v0, "internal_push_open_Video"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {p0}, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a(Landroid/content/Context;)V

    .line 279
    invoke-static {p0}, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a(Lcom/cmplay/internalpush/video/InnerPushReceiver$a;)V

    .line 280
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/a;->b(Z)V

    .line 282
    invoke-direct {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->g()V

    .line 284
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 268
    const-string v0, "internal_push_open_Video"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->d:Lcom/cmplay/internalpush/video/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/a;->c(Z)V

    .line 272
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 473
    const-string v0, "internal_push_open_Video"

    const-string v1, "on SurfaceTextureAvailable -- >"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->c:Landroid/graphics/SurfaceTexture;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->y:Z

    .line 475
    iput-object p1, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->c:Landroid/graphics/SurfaceTexture;

    .line 476
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->e:Lcom/cmplay/internalpush/video/c;

    if-eqz v0, :cond_0

    .line 477
    iget-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->x:Z

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "internal_push_open_Video"

    const-string v1, "onSurfaceTextureAvailable --> play"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->a()V

    .line 482
    :cond_0
    return-void

    .line 474
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 490
    const-string v0, "internal_push_open_Video"

    const-string v1, "on onSurfaceTextureDestroyed -- >"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->y:Z

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenVideoActivity;->c:Landroid/graphics/SurfaceTexture;

    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 486
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 498
    return-void
.end method
