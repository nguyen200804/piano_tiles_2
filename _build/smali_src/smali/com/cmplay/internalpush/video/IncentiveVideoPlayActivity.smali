.class public Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;
.super Landroid/app/Activity;
.source "IncentiveVideoPlayActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/cmplay/internalpush/video/InnerPushReceiver$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static f:Lcom/cmplay/internalpush/video/b;

.field private static x:Z


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/cmplay/internalpush/video/InnerPushTextureView;

.field private c:Landroid/graphics/SurfaceTexture;

.field private d:Lcom/cmplay/internalpush/video/a;

.field private e:Lcom/cmplay/internalpush/video/c;

.field private g:Z

.field private h:Ljava/util/Timer;

.field private i:Ljava/util/TimerTask;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/widget/ProgressBar;

.field private s:I

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private y:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->x:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const-string v0, "internal_push_VideoPlay"

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->g:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->u:Z

    .line 73
    new-instance v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$1;-><init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->y:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->s:I

    return p1
.end method

.method static synthetic a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/c;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    return-object v0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->p:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)Z
    .locals 2

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 90
    :cond_0
    sput-boolean p1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->x:Z

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    const-string v1, "info_for_show"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->t:I

    return p1
.end method

.method static synthetic b(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->r:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->q:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic c(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->s:I

    return v0
.end method

.method static synthetic d(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h()V

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->x:Z

    return v0
.end method

.method private e()V
    .locals 12

    .prologue
    .line 145
    new-instance v0, Lcom/cmplay/internalpush/video/c;

    invoke-direct {v0}, Lcom/cmplay/internalpush/video/c;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    .line 146
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/c;->setAudioStreamType(I)V

    .line 148
    sget v0, Lcom/cmplay/internalpush/R$id;->video_full_screen:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/video/InnerPushTextureView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b:Lcom/cmplay/internalpush/video/InnerPushTextureView;

    .line 149
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b:Lcom/cmplay/internalpush/video/InnerPushTextureView;

    invoke-virtual {v0, p0}, Lcom/cmplay/internalpush/video/InnerPushTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 151
    sget v0, Lcom/cmplay/internalpush/R$id;->vast_img_close_portrait:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->j:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget v0, Lcom/cmplay/internalpush/R$id;->vast_img_volume_portrait:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->l:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    sget v0, Lcom/cmplay/internalpush/R$id;->vast_img_close_landscape:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->k:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget v0, Lcom/cmplay/internalpush/R$id;->vast_img_volume_landscape:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->m:Landroid/widget/ImageView;

    .line 159
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    sget v0, Lcom/cmplay/internalpush/R$id;->video_full_screen_progress:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->r:Landroid/widget/ProgressBar;

    .line 163
    sget v0, Lcom/cmplay/internalpush/R$id;->learn_more_landscape:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->o:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v0, Lcom/cmplay/internalpush/R$id;->learn_more_portrait:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->n:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget-object v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    if-eqz v0, :cond_0

    .line 170
    sget v0, Lcom/cmplay/internalpush/R$id;->vast_video_view_container:I

    .line 171
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;

    .line 172
    sget-object v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/b;->t()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/b;->u()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/AspectRatioRelativeLayout;->a(F)V

    .line 174
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f()V

    .line 177
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x9

    sget-object v3, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/video/b;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/video/b;->d()J

    move-result-wide v4

    const-string v6, ""

    const/4 v7, 0x0

    sget-object v8, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/video/b;->x()I

    move-result v8

    sget-object v9, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/video/b;->m()J

    move-result-wide v10

    long-to-int v9, v10

    int-to-long v9, v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 178
    const-string v0, "internal_push_VideoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseCloudDataVideo  \u5f53\u524d\u5185\u63a8\u89c6\u9891\u5c55\u793a  @@@proId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/b;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    \u662f\u5426\u7206\u6b3e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/b;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   \u5f53\u524d\u5c55\u793a\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_show_hit_top_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a(Landroid/content/Context;)Lcom/cmplay/internalpush/data/ParseCloudDataVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cmplay/internalpush/data/ParseCloudDataVideo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/cmplay/internalpush/a/d;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-boolean v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->x:Z

    if-nez v0, :cond_0

    .line 181
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "sendBroadcast  onVideoShow"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    const-string v1, "com.cmplay.libinnerpushvideo.video.Progress_notify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "video_progress_status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    :cond_0
    return-void
.end method

.method private e(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    const-string v0, "info_for_show"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    const-string v1, "internal_push_VideoPlay"

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

    .line 537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 538
    new-instance v1, Lcom/cmplay/internalpush/video/b;

    invoke-direct {v1, v0}, Lcom/cmplay/internalpush/video/b;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    .line 541
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->i()V

    return-void
.end method

.method static synthetic f(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->y:Ljava/lang/Runnable;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/b;->t()I

    move-result v0

    sget-object v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/b;->u()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 194
    const/4 v0, 0x0

    .line 198
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->setRequestedOrientation(I)V

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->g()V

    .line 202
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->i()V

    .line 203
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h()V

    .line 204
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->t:I

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 207
    invoke-static {p0}, Lcom/cmplay/internalpush/video/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->m:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->u:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/cmplay/internalpush/R$drawable;->vast_volume_off:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :goto_1
    return-void

    .line 209
    :cond_0
    sget v0, Lcom/cmplay/internalpush/R$drawable;->vast_volume_on:I

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->l:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->u:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/cmplay/internalpush/R$drawable;->vast_volume_off:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    sget v0, Lcom/cmplay/internalpush/R$drawable;->vast_volume_on:I

    goto :goto_2
.end method

.method static synthetic h(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Lcom/cmplay/internalpush/video/a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 219
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 224
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    return-void
.end method

.method static synthetic i(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->g:Z

    return v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/cmplay/internalpush/video/e;->c()Lcom/cmplay/base/util/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-static {}, Lcom/cmplay/internalpush/video/e;->c()Lcom/cmplay/base/util/c/c;

    move-result-object v0

    sget-object v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/b;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$2;

    invoke-direct {v2, p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$2;-><init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/cmplay/base/util/c/c;->a(Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V

    .line 252
    invoke-static {}, Lcom/cmplay/internalpush/video/e;->c()Lcom/cmplay/base/util/c/c;

    move-result-object v0

    sget-object v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/b;->q()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$3;

    invoke-direct {v2, p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$3;-><init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/cmplay/base/util/c/c;->a(Ljava/lang/String;Lcom/cmplay/base/util/c/b;)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 407
    const-string v0, "internal_push_VideoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumePlay    mPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mTexture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mSurfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->w:Z

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->start()V

    .line 410
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->r:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "resumePlay --> play"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a()V

    goto :goto_0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h:Ljava/util/Timer;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->i:Ljava/util/TimerTask;

    if-nez v0, :cond_1

    .line 559
    new-instance v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$7;

    invoke-direct {v0, p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$7;-><init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->i:Ljava/util/TimerTask;

    .line 571
    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->v:Z

    .line 300
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 301
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "play mTexture is null"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_0
    return-void

    .line 305
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    if-nez v0, :cond_2

    .line 306
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "play Model is null"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-boolean v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->x:Z

    if-nez v0, :cond_1

    .line 308
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "sendBroadcast  onVideoShowFail   play Model is null"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 310
    const-string v1, "com.cmplay.libinnerpushvideo.video.Progress_notify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "video_progress_status"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    const-string v1, "error_info"

    const-string v2, "play Model is null"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->finish()V

    goto :goto_0

    .line 321
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->reset()V

    .line 322
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/c;->a(Landroid/graphics/SurfaceTexture;)V

    .line 324
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    sget-object v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/c;->setDataSource(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    new-instance v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$4;

    invoke-direct {v1, p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$4;-><init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/c;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 347
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    new-instance v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$5;

    invoke-direct {v1, p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$5;-><init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/c;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 356
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    new-instance v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;

    invoke-direct {v1, p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity$6;-><init>(Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/c;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 369
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "Exception  MediaPlayer"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->finish()V

    goto :goto_0
.end method

.method protected a(FZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 504
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->u:Z

    .line 505
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    iget-boolean v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->u:Z

    invoke-virtual {v0, v2}, Lcom/cmplay/internalpush/video/a;->d(Z)V

    .line 506
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->s:I

    .line 507
    invoke-static {p0}, Lcom/cmplay/internalpush/video/d;->b(Landroid/content/Context;)F

    move-result v0

    .line 508
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    move v0, v1

    .line 509
    :goto_1
    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v1, v0, v0}, Lcom/cmplay/internalpush/video/c;->setVolume(FF)V

    .line 510
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->g()V

    .line 511
    return-void

    .line 504
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 508
    :cond_1
    div-float v0, p1, v0

    goto :goto_1
.end method

.method public a(I)V
    .locals 4

    .prologue
    .line 547
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "startTimer"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c()V

    .line 549
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->l()V

    .line 550
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->i:Ljava/util/TimerTask;

    add-int/lit16 v2, p1, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 552
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b()V

    .line 516
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->v:Z

    .line 394
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/a;->b(Z)V

    .line 398
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->r:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 399
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "internal_push_VideoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause: set play time ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/video/c;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    iget-object v1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/video/c;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/a;->a(I)V

    .line 402
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->pause()V

    goto :goto_0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 520
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 574
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "resetTimer()"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 577
    iput-object v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->h:Ljava/util/Timer;

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->i:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->i:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 581
    iput-object v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->i:Ljava/util/TimerTask;

    .line 583
    :cond_1
    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 524
    invoke-static {p0}, Lcom/cmplay/internalpush/video/d;->a(Landroid/content/Context;)F

    move-result v1

    .line 525
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(FZ)V

    .line 526
    return-void

    .line 525
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public finish()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 462
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    if-eqz v0, :cond_0

    .line 464
    iget-object v3, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    sget-object v4, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->p:Ljava/lang/ref/WeakReference;

    .line 465
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->q:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->q:Ljava/lang/ref/WeakReference;

    .line 466
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 464
    :goto_1
    invoke-static {p0, v3, v4, v1, v0}, Lcom/cmplay/internalpush/video/VideoAdDetailActivity;->a(Landroid/content/Context;Lcom/cmplay/internalpush/video/a;Lcom/cmplay/internalpush/video/b;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    .line 468
    invoke-static {}, Lcom/cmplay/internalpush/o;->a()Lcom/cmplay/internalpush/o;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0xa

    sget-object v3, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v3}, Lcom/cmplay/internalpush/video/b;->f()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v4}, Lcom/cmplay/internalpush/video/b;->d()J

    move-result-wide v4

    const-string v6, ""

    sget-object v8, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v8}, Lcom/cmplay/internalpush/video/b;->x()I

    move-result v8

    sget-object v9, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/video/b;->m()J

    move-result-wide v10

    long-to-int v9, v10

    int-to-long v9, v9

    invoke-virtual/range {v0 .. v10}, Lcom/cmplay/internalpush/o;->a(IILjava/lang/String;JLjava/lang/String;IIJ)V

    .line 470
    :cond_0
    sput-boolean v7, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->x:Z

    .line 471
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 472
    return-void

    :cond_1
    move-object v1, v2

    .line 465
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 466
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 420
    sget v2, Lcom/cmplay/internalpush/R$id;->learn_more_portrait:I

    if-eq v0, v2, :cond_0

    sget v2, Lcom/cmplay/internalpush/R$id;->learn_more_landscape:I

    if-ne v0, v2, :cond_3

    .line 421
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    sget-object v1, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f:Lcom/cmplay/internalpush/video/b;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/cmplay/internalpush/video/a;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;Lcom/cmplay/base/util/t;)V

    .line 424
    :cond_1
    sget-boolean v0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->x:Z

    if-nez v0, :cond_2

    .line 425
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "sendBroadcast  onVideoClick"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    const-string v1, "com.cmplay.libinnerpushvideo.video.Progress_notify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v1, "video_progress_status"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    :cond_2
    :goto_0
    return-void

    .line 431
    :cond_3
    sget v2, Lcom/cmplay/internalpush/R$id;->vast_img_close_portrait:I

    if-eq v0, v2, :cond_4

    sget v2, Lcom/cmplay/internalpush/R$id;->vast_img_close_landscape:I

    if-ne v0, v2, :cond_5

    .line 432
    :cond_4
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->finish()V

    goto :goto_0

    .line 433
    :cond_5
    sget v2, Lcom/cmplay/internalpush/R$id;->vast_img_volume_portrait:I

    if-eq v0, v2, :cond_6

    sget v2, Lcom/cmplay/internalpush/R$id;->vast_img_volume_landscape:I

    if-ne v0, v2, :cond_2

    .line 434
    :cond_6
    invoke-static {p0}, Lcom/cmplay/internalpush/video/d;->a(Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 435
    :goto_1
    iget-boolean v2, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->u:Z

    if-eqz v2, :cond_7

    invoke-static {p0}, Lcom/cmplay/internalpush/video/d;->a(Landroid/content/Context;)F

    move-result v1

    :cond_7
    invoke-virtual {p0, v1, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(FZ)V

    goto :goto_0

    .line 434
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->f()V

    .line 275
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget v0, Lcom/cmplay/internalpush/R$layout;->cm_activity_incentive_video:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 106
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 107
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 110
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e(Landroid/content/Intent;)V

    .line 112
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e()V

    .line 113
    new-instance v0, Lcom/cmplay/internalpush/video/a;

    invoke-direct {v0}, Lcom/cmplay/internalpush/video/a;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    .line 115
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(FZ)V

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->j()V

    .line 122
    return-void

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/cmplay/internalpush/video/d;->a(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a(FZ)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 441
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 442
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/c;->release()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    .line 447
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 451
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 457
    :goto_0
    return v0

    .line 453
    :cond_0
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b()V

    goto :goto_0

    .line 457
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 381
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {p0}, Lcom/cmplay/internalpush/video/InnerPushReceiver;->b(Lcom/cmplay/internalpush/video/InnerPushReceiver$a;)V

    .line 383
    invoke-static {p0}, Lcom/cmplay/internalpush/video/InnerPushReceiver;->b(Landroid/content/Context;)V

    .line 384
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/video/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->b()V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c()V

    .line 390
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 289
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {p0}, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a(Landroid/content/Context;)V

    .line 291
    invoke-static {p0}, Lcom/cmplay/internalpush/video/InnerPushReceiver;->a(Lcom/cmplay/internalpush/video/InnerPushReceiver$a;)V

    .line 292
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/a;->b(Z)V

    .line 294
    invoke-direct {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->k()V

    .line 296
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 280
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->d:Lcom/cmplay/internalpush/video/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cmplay/internalpush/video/a;->c(Z)V

    .line 284
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 476
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "on SurfaceTextureAvailable -- >"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c:Landroid/graphics/SurfaceTexture;

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->w:Z

    .line 478
    iput-object p1, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c:Landroid/graphics/SurfaceTexture;

    .line 479
    iget-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->e:Lcom/cmplay/internalpush/video/c;

    if-eqz v0, :cond_0

    .line 480
    iget-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->v:Z

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "onSurfaceTextureAvailable --> play"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->a()V

    .line 485
    :cond_0
    return-void

    .line 477
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 493
    const-string v0, "internal_push_VideoPlay"

    const-string v1, "on onSurfaceTextureDestroyed -- >"

    invoke-static {v0, v1}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->w:Z

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cmplay/internalpush/video/IncentiveVideoPlayActivity;->c:Landroid/graphics/SurfaceTexture;

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i2"    # I

    .prologue
    .line 489
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 501
    return-void
.end method
