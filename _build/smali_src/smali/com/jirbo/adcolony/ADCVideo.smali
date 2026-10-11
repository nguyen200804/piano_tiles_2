.class public abstract Lcom/jirbo/adcolony/ADCVideo;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/jirbo/adcolony/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jirbo/adcolony/ADCVideo$a;
    }
.end annotation


# static fields
.field static a:I

.field static b:I

.field static c:I

.field static d:Z

.field static e:Z

.field static f:Z

.field static g:Z

.field static h:Z


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Lcom/jirbo/adcolony/e;

.field E:Lcom/jirbo/adcolony/x;

.field F:Lcom/jirbo/adcolony/g;

.field G:Lcom/immersion/hapticmediasdk/a;

.field H:Ljava/lang/String;

.field I:Z

.field J:Z

.field K:Ljava/lang/String;

.field L:Landroid/widget/VideoView;

.field M:Landroid/widget/FrameLayout;

.field N:Landroid/widget/FrameLayout;

.field O:Landroid/widget/FrameLayout;

.field P:Landroid/graphics/Rect;

.field Q:Lcom/jirbo/adcolony/c;

.field R:Lcom/jirbo/adcolony/ADCVideo$a;

.field S:Ljava/io/FileInputStream;

.field T:Z

.field U:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:D

.field p:D

.field q:J

.field r:J

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:D

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->i:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->y:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->z:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->A:Z

    .line 89
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->B:Z

    .line 100
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Z

    .line 101
    const-string v0, "Your purchase will begin shortly!"

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->P:Landroid/graphics/Rect;

    .line 122
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->T:Z

    .line 123
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->U:Z

    .line 796
    return-void
.end method

.method static a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 128
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    .line 129
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    .line 130
    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->f:Z

    .line 131
    return-void
.end method


# virtual methods
.method public a(Lcom/jirbo/adcolony/b;)V
    .locals 3

    .prologue
    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/x;->P:Z

    if-nez v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    const-string v1, "<script type=\"text/javascript\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    sget-object v1, Lcom/jirbo/adcolony/t;->S:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/jirbo/adcolony/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    iget-object v1, p1, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 599
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    const-string v1, ""

    iput-object v1, v0, Lcom/jirbo/adcolony/x;->ac:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 617
    sget-object v0, Lcom/jirbo/adcolony/al;->d:Lcom/jirbo/adcolony/al;

    const-string v1, "OutOfMemoryError - disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/al;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/al;

    .line 618
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/x;->c(Z)V

    .line 619
    invoke-static {}, Lcom/jirbo/adcolony/f;->a()V

    goto :goto_0

    .line 602
    :cond_2
    :try_start_1
    iget-object v1, p1, Lcom/jirbo/adcolony/b;->m:Ljava/lang/String;

    const-string v2, "<script (type=\"text/javascript\")?((\\s)*src=\"mraid.js\"){1}></script>"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iput-object v0, v1, Lcom/jirbo/adcolony/x;->ac:Ljava/lang/String;

    .line 606
    new-instance v0, Lcom/jirbo/adcolony/ADCVideo$2;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/ADCVideo$2;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 754
    iput-object p1, p0, Lcom/jirbo/adcolony/ADCVideo;->y:Ljava/lang/String;

    .line 755
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->f:Z

    .line 756
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    .line 758
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 763
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 764
    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 766
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/jirbo/adcolony/ADCVideo;->s:I

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 768
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 770
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 772
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$3;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$3;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 782
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$4;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$4;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 790
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 791
    return-void
.end method

.method b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 459
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->s:I

    .line 460
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 462
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->s:I

    .line 463
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 465
    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->w:I

    .line 467
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->w:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget v1, p0, Lcom/jirbo/adcolony/ADCVideo;->s:I

    .line 470
    iget v2, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 472
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 473
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    .line 475
    sget-boolean v3, Lcom/jirbo/adcolony/t;->d:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    if-ge v3, v4, :cond_0

    .line 477
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->s:I

    .line 478
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    .line 479
    iput v2, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    .line 480
    iput v1, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    .line 483
    :cond_0
    sget-boolean v1, Lcom/jirbo/adcolony/t;->z:Z

    if-eqz v1, :cond_1

    .line 485
    sput-boolean v0, Lcom/jirbo/adcolony/t;->z:Z

    .line 486
    const/4 v0, 0x1

    .line 488
    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    sput-boolean v2, Lcom/jirbo/adcolony/t;->Y:Z

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    sget-object v0, Lcom/jirbo/adcolony/t;->H:Lcom/jirbo/adcolony/g;

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    .line 144
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 330
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "haptics_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->f(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Z

    .line 151
    const-string v0, "haptics_filepath"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Ljava/lang/String;

    .line 152
    const-string v0, "in_progress"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->K:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->s:Lcom/jirbo/adcolony/o;

    if-nez v0, :cond_4

    const-string v0, "video_filepath"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->z:Ljava/lang/String;

    .line 156
    const-string v0, "video_duration"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->e(Ljava/lang/String;)I

    move-result v0

    int-to-double v6, v0

    iput-wide v6, p0, Lcom/jirbo/adcolony/ADCVideo;->x:D

    .line 204
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Z

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p0}, Lcom/immersion/hapticmediasdk/b;->a(ILandroid/content/Context;)Lcom/immersion/hapticmediasdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/immersion/hapticmediasdk/a;

    .line 209
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/immersion/hapticmediasdk/a;

    iget-object v3, p0, Lcom/jirbo/adcolony/ADCVideo;->H:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/immersion/hapticmediasdk/a;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/immersion/hapticmediasdk/a;

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Z

    .line 221
    :cond_1
    const-string v0, "video_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/jirbo/adcolony/t;->O:Z

    .line 222
    const-string v0, "end_card_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/jirbo/adcolony/t;->N:Z

    .line 223
    const-string v0, "load_timeout_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->f(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/jirbo/adcolony/t;->P:Z

    .line 224
    const-string v0, "load_timeout"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->e(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/t;->Q:I

    move v3, v2

    .line 226
    :goto_5
    sget-object v0, Lcom/jirbo/adcolony/t;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 228
    sget-object v0, Lcom/jirbo/adcolony/t;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    sget-object v0, Lcom/jirbo/adcolony/t;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/o;

    .line 231
    iget-object v5, v0, Lcom/jirbo/adcolony/o;->V:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/jirbo/adcolony/o;->M:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_2
    iget-object v5, v0, Lcom/jirbo/adcolony/o;->K:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->K:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->s:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->c:Ljava/lang/String;

    goto :goto_1

    .line 211
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    iput-boolean v2, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Z

    goto :goto_2

    :cond_5
    move v0, v2

    .line 221
    goto :goto_3

    :cond_6
    move v0, v2

    .line 222
    goto :goto_4

    .line 236
    :cond_7
    const-string v0, "v4iap_enabled"

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    sget-object v3, Lcom/jirbo/adcolony/k;->b:Lcom/jirbo/adcolony/k;

    iput-object v3, v0, Lcom/jirbo/adcolony/g;->u:Lcom/jirbo/adcolony/k;

    .line 239
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/g;->q:Z

    .line 240
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    const-string v3, "product_id"

    invoke-static {v3}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/jirbo/adcolony/g;->i:Ljava/lang/String;

    .line 243
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/g;->p:Z

    sput-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->e:Z

    .line 246
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCVideo;->requestWindowFeature(I)Z

    .line 249
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    const/16 v5, 0x400

    invoke-virtual {v0, v3, v5}, Landroid/view/Window;->setFlags(II)V

    .line 252
    sget-boolean v0, Lcom/jirbo/adcolony/t;->d:Z

    if-nez v0, :cond_a

    .line 255
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_9

    .line 258
    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    .line 313
    :goto_6
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setVolumeControlStream(I)V

    .line 316
    new-instance v0, Lcom/jirbo/adcolony/e;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    .line 317
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/e;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 318
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    .line 319
    new-instance v0, Lcom/jirbo/adcolony/x;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/x;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    .line 320
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    .line 321
    new-instance v0, Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-direct {v0, p0, p0}, Lcom/jirbo/adcolony/ADCVideo$a;-><init>(Lcom/jirbo/adcolony/ADCVideo;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Lcom/jirbo/adcolony/ADCVideo$a;

    .line 322
    new-instance v0, Lcom/jirbo/adcolony/c;

    const-string v1, "browser_icon"

    invoke-static {v1}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jirbo/adcolony/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->Q:Lcom/jirbo/adcolony/c;

    .line 325
    sput-boolean v2, Lcom/jirbo/adcolony/AdColonyBrowser;->B:Z

    .line 328
    sput-object p0, Lcom/jirbo/adcolony/t;->I:Lcom/jirbo/adcolony/ADCVideo;

    .line 329
    sput-object p0, Lcom/jirbo/adcolony/t;->J:Lcom/jirbo/adcolony/ADCVideo;

    goto/16 :goto_0

    .line 263
    :cond_9
    invoke-virtual {p0, v2}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_6

    .line 270
    :cond_a
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 271
    if-eqz v3, :cond_b

    if-eq v3, v4, :cond_b

    const/4 v0, 0x2

    if-ne v3, v0, :cond_c

    :cond_b
    move v0, v4

    :goto_7
    sput v0, Lcom/jirbo/adcolony/t;->u:I

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Kindle Fire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 280
    sget v0, Lcom/jirbo/adcolony/t;->u:I

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto :goto_6

    .line 271
    :cond_c
    const/4 v0, 0x7

    goto :goto_7

    .line 285
    :cond_d
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "Kindle Fire"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 287
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->getRequestedOrientation()I

    .line 288
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 289
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 290
    packed-switch v0, :pswitch_data_0

    .line 302
    const/16 v1, 0x8

    .line 307
    :goto_8
    :pswitch_0
    sput v1, Lcom/jirbo/adcolony/t;->u:I

    .line 308
    invoke-virtual {p0, v1}, Lcom/jirbo/adcolony/ADCVideo;->setRequestedOrientation(I)V

    goto/16 :goto_6

    :pswitch_1
    move v1, v2

    .line 297
    goto :goto_8

    .line 299
    :pswitch_2
    const/16 v1, 0x9

    .line 300
    goto :goto_8

    :cond_e
    move v1, v3

    goto :goto_8

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 425
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 427
    sget-boolean v0, Lcom/jirbo/adcolony/t;->Y:Z

    if-nez v0, :cond_0

    .line 436
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jirbo/adcolony/au;->a:Z

    .line 437
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/au;->b:Lcom/jirbo/adcolony/au;

    .line 444
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->t:Lcom/jirbo/adcolony/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/g;->r:Z

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    const/4 v1, 0x1

    iput v1, v0, Lcom/jirbo/adcolony/g;->a:I

    .line 447
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/g;->d()V

    .line 449
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 743
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 744
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keycode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 684
    sget-object v0, Lcom/jirbo/adcolony/au;->b:Lcom/jirbo/adcolony/au;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/au;->b:Lcom/jirbo/adcolony/au;

    invoke-virtual {v0, p1, p2}, Lcom/jirbo/adcolony/au;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 733
    :goto_0
    return v0

    .line 688
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 690
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_3

    .line 692
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->f:Z

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 695
    sput-boolean v3, Lcom/jirbo/adcolony/ADCVideo;->f:Z

    .line 696
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 697
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    :cond_1
    :goto_1
    move v0, v1

    .line 724
    goto :goto_0

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget v0, v0, Lcom/jirbo/adcolony/x;->t:I

    if-nez v0, :cond_1

    .line 701
    sput-boolean v1, Lcom/jirbo/adcolony/t;->Y:Z

    .line 702
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->f()V

    goto :goto_1

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/jirbo/adcolony/au;->b:Lcom/jirbo/adcolony/au;

    if-eqz v0, :cond_5

    .line 709
    sget-object v0, Lcom/jirbo/adcolony/au;->b:Lcom/jirbo/adcolony/au;

    iget-object v0, v0, Lcom/jirbo/adcolony/au;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/c;

    .line 711
    invoke-virtual {v0}, Lcom/jirbo/adcolony/c;->a()V

    goto :goto_2

    .line 713
    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/au;->b:Lcom/jirbo/adcolony/au;

    .line 714
    sput-boolean v3, Lcom/jirbo/adcolony/au;->a:Z

    .line 715
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->start()V

    .line 716
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->C:Z

    goto :goto_1

    .line 718
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/x;->L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/x;->N:Z

    if-eqz v0, :cond_1

    .line 720
    sput-boolean v1, Lcom/jirbo/adcolony/t;->Y:Z

    .line 721
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->g()V

    goto :goto_1

    .line 726
    :cond_6
    const/16 v0, 0x52

    if-ne p1, v0, :cond_7

    move v0, v1

    .line 729
    goto :goto_0

    .line 733
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const/4 v6, 0x0

    .line 628
    sput-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    .line 630
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->f:Z

    if-eqz v0, :cond_4

    .line 632
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->b:I

    .line 635
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 644
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_1

    .line 646
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 647
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 648
    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->r:J

    .line 650
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->p:D

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCVideo;->r:J

    iget-wide v4, p0, Lcom/jirbo/adcolony/ADCVideo;->q:J

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->p:D

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->U:Z

    if-nez v0, :cond_5

    .line 655
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->a()V

    .line 657
    iput-boolean v6, p0, Lcom/jirbo/adcolony/ADCVideo;->C:Z

    .line 658
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v7}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    .line 659
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/immersion/hapticmediasdk/a;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a;->g()I

    .line 667
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jirbo/adcolony/x;->A:Z

    .line 668
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/x;->I:Z

    .line 669
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/x;->H:Z

    .line 670
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iput-boolean v6, v0, Lcom/jirbo/adcolony/x;->J:Z

    .line 671
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iput v6, v0, Lcom/jirbo/adcolony/x;->u:I

    .line 672
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iput v6, v0, Lcom/jirbo/adcolony/x;->t:I

    .line 673
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->invalidate()V

    .line 675
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 676
    invoke-static {}, Lcom/jirbo/adcolony/f;->c()V

    .line 677
    return-void

    .line 640
    :cond_4
    sput v6, Lcom/jirbo/adcolony/ADCVideo;->b:I

    goto :goto_0

    .line 663
    :cond_5
    sput v6, Lcom/jirbo/adcolony/ADCVideo;->a:I

    goto :goto_1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->i:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 338
    sget-object v2, Lcom/jirbo/adcolony/al;->a:Lcom/jirbo/adcolony/al;

    const-string v3, "duration, actual_duration = "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v2

    iget-wide v4, p0, Lcom/jirbo/adcolony/ADCVideo;->x:D

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/al;->a(D)Lcom/jirbo/adcolony/al;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/al;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/al;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/al;->b(I)Lcom/jirbo/adcolony/al;

    .line 339
    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCVideo;->x:D

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/jirbo/adcolony/ADCVideo;->x:D

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 340
    :goto_0
    if-nez v0, :cond_2

    .line 342
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 350
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 339
    goto :goto_0

    .line 347
    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/af;->a(Lcom/jirbo/adcolony/g;)V

    .line 348
    iput-boolean v1, p0, Lcom/jirbo/adcolony/ADCVideo;->i:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    .line 358
    sput-boolean v6, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 360
    invoke-static {p0}, Lcom/jirbo/adcolony/f;->a(Landroid/app/Activity;)V

    .line 361
    invoke-static {}, Lcom/jirbo/adcolony/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->finish()V

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ADCVideo;->b()Z

    .line 364
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->A:Z

    if-eqz v0, :cond_6

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->A:Z

    .line 369
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_6

    .line 371
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/x;->P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->N:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-object v1, v1, Lcom/jirbo/adcolony/x;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/x;->P:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->N:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 373
    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    const/16 v1, 0x14

    iput v1, v0, Lcom/jirbo/adcolony/x;->m:I

    .line 374
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-I800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    const/16 v1, 0x19

    iput v1, v0, Lcom/jirbo/adcolony/x;->m:I

    .line 375
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->u:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->v:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget-boolean v0, v0, Lcom/jirbo/adcolony/x;->P:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->N:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->s:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    iget-object v5, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iget v5, v5, Lcom/jirbo/adcolony/x;->m:I

    sub-int/2addr v4, v5

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/jirbo/adcolony/ADCVideo;->s:I

    iget v4, p0, Lcom/jirbo/adcolony/ADCVideo;->t:I

    invoke-direct {v2, v3, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    :cond_6
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->f:Z

    if-eqz v0, :cond_a

    .line 384
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 385
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->R:Lcom/jirbo/adcolony/ADCVideo$a;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 395
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 396
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 401
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Ljava/io/FileInputStream;

    .line 402
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    iget-object v1, p0, Lcom/jirbo/adcolony/ADCVideo;->S:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->a(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    if-nez v0, :cond_8

    invoke-virtual {p0, v6}, Lcom/jirbo/adcolony/ADCVideo;->onWindowFocusChanged(Z)V

    .line 416
    :cond_8
    sget-boolean v0, Lcom/jirbo/adcolony/t;->O:Z

    if-eqz v0, :cond_9

    .line 418
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->a()V

    .line 419
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->d()V

    .line 421
    :cond_9
    :goto_1
    return-void

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 391
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ADCVideo;->q:J

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to play video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "video_filepath"

    invoke-static {v1}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jirbo/adcolony/t;->d(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0, v6}, Lcom/jirbo/adcolony/x;->c(Z)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "has_focus"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 496
    if-eqz p1, :cond_b

    .line 498
    sput-boolean v4, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    .line 499
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_7

    .line 501
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    if-eqz v0, :cond_3

    .line 505
    sget v0, Lcom/jirbo/adcolony/ADCVideo;->c:I

    if-eqz v0, :cond_0

    sget v0, Lcom/jirbo/adcolony/ADCVideo;->c:I

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 506
    :cond_0
    sput v4, Lcom/jirbo/adcolony/ADCVideo;->c:I

    .line 507
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    sget v1, Lcom/jirbo/adcolony/ADCVideo;->a:I

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/e;->seekTo(I)V

    .line 510
    sget-boolean v0, Lcom/jirbo/adcolony/t;->d:Z

    if-eqz v0, :cond_4

    .line 512
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 513
    new-instance v1, Lcom/jirbo/adcolony/ADCVideo$1;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/ADCVideo$1;-><init>(Lcom/jirbo/adcolony/ADCVideo;)V

    .line 520
    iget-object v2, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    .line 521
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    :goto_0
    sget-boolean v0, Lcom/jirbo/adcolony/au;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->U:Z

    if-nez v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    iput-boolean v4, v0, Lcom/jirbo/adcolony/x;->Q:Z

    .line 531
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->start()V

    .line 532
    iput-boolean v5, p0, Lcom/jirbo/adcolony/ADCVideo;->C:Z

    .line 534
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Z

    if-eqz v0, :cond_6

    .line 537
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/immersion/hapticmediasdk/a;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a;->d()I

    .line 540
    :cond_1
    new-instance v1, Lcom/jirbo/adcolony/b;

    sget-object v2, Lcom/jirbo/adcolony/t;->c:Lcom/jirbo/adcolony/af;

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->s:Lcom/jirbo/adcolony/o;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->j:Ljava/lang/String;

    :goto_1
    invoke-direct {v1, v2, v0, p0}, Lcom/jirbo/adcolony/b;-><init>(Lcom/jirbo/adcolony/af;Ljava/lang/String;Lcom/jirbo/adcolony/b$a;)V

    invoke-virtual {v1}, Lcom/jirbo/adcolony/b;->a()V

    .line 542
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideo;->J:Z

    .line 549
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->requestFocus()Z

    .line 550
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->invalidate()V

    .line 583
    :cond_3
    :goto_3
    return-void

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0, v4}, Lcom/jirbo/adcolony/e;->setBackgroundColor(I)V

    goto :goto_0

    .line 540
    :cond_5
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->F:Lcom/jirbo/adcolony/g;

    iget-object v0, v0, Lcom/jirbo/adcolony/g;->s:Lcom/jirbo/adcolony/o;

    iget-object v0, v0, Lcom/jirbo/adcolony/o;->ai:Ljava/lang/String;

    goto :goto_1

    .line 544
    :cond_6
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Z

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/immersion/hapticmediasdk/a;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a;->f()I

    goto :goto_2

    .line 553
    :cond_7
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->f:Z

    if-eqz v0, :cond_a

    .line 555
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    if-eqz v0, :cond_8

    .line 557
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    sget v1, Lcom/jirbo/adcolony/ADCVideo;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 558
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->L:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_3

    .line 562
    :cond_8
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->O:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 563
    :cond_9
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->M:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jirbo/adcolony/ADCVideo;->setContentView(Landroid/view/View;)V

    goto :goto_3

    .line 566
    :cond_a
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->d:Z

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->E:Lcom/jirbo/adcolony/x;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/x;->invalidate()V

    goto :goto_3

    .line 574
    :cond_b
    sget-boolean v0, Lcom/jirbo/adcolony/ADCVideo;->g:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->U:Z

    if-nez v0, :cond_d

    .line 576
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ADCVideo;->I:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->G:Lcom/immersion/hapticmediasdk/a;

    invoke-virtual {v0}, Lcom/immersion/hapticmediasdk/a;->g()I

    .line 577
    :cond_c
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/jirbo/adcolony/ADCVideo;->a:I

    .line 578
    iget-object v0, p0, Lcom/jirbo/adcolony/ADCVideo;->D:Lcom/jirbo/adcolony/e;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/e;->pause()V

    .line 579
    iput-boolean v4, p0, Lcom/jirbo/adcolony/ADCVideo;->C:Z

    .line 581
    :cond_d
    sput-boolean v5, Lcom/jirbo/adcolony/ADCVideo;->h:Z

    goto :goto_3
.end method
