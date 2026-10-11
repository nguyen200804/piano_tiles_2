.class public Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;
.super Landroid/view/TextureView;
.source "Mp4Viewer.java"

# interfaces
.implements Lcom/cmcm/orion/picks/impl/a$a;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/cmcm/orion/picks/impl/player/a;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/cmcm/orion/picks/impl/a$a;

.field private f:Landroid/view/TextureView$SurfaceTextureListener;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->d:I

    .line 217
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;-><init>(Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->f:Landroid/view/TextureView$SurfaceTextureListener;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->g:Z

    .line 45
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->k()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->d:I

    .line 217
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;-><init>(Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->f:Landroid/view/TextureView$SurfaceTextureListener;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->g:Z

    .line 51
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->k()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->d:I

    .line 217
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;

    invoke-direct {v0, p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer$1;-><init>(Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->f:Landroid/view/TextureView$SurfaceTextureListener;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->g:Z

    .line 58
    invoke-direct {p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->k()V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;)Lcom/cmcm/orion/picks/impl/player/a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    .line 63
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->f:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->setBackgroundColor(I)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->setFocusable(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v0, p1, p2}, Lcom/cmcm/orion/picks/impl/player/a;->a(FF)V

    .line 198
    return-void
.end method

.method public final a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/impl/player/a;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 215
    return-void
.end method

.method public final a(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/impl/player/a;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 203
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/i;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    .line 105
    invoke-static {p1}, Lcom/cmcm/orion/picks/impl/i;->h(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    .line 107
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v1, p1}, Lcom/cmcm/orion/picks/impl/player/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/impl/player/a;->a(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public final b(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/impl/player/a;->b(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 207
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 252
    invoke-static {}, Lcom/cmcm/orion/adsdk/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/a$1;->a(Landroid/content/Context;)Z

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v1}, Lcom/cmcm/orion/picks/impl/player/a;->a()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->g:Z

    .line 1156
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a;->b(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v0, p1}, Lcom/cmcm/orion/picks/impl/player/a;->c(I)V

    .line 153
    return-void
.end method

.method public final c(Lcom/cmcm/orion/picks/impl/a$a;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->e:Lcom/cmcm/orion/picks/impl/a$a;

    .line 211
    return-void
.end method

.method public final c_()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/a;->a()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->g:Z

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->g:Z

    .line 264
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->g()V

    .line 266
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->e:Lcom/cmcm/orion/picks/impl/a$a;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->e:Lcom/cmcm/orion/picks/impl/a$a;

    invoke-interface {v0}, Lcom/cmcm/orion/picks/impl/a$a;->f()V

    .line 273
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a;->b(I)V

    .line 149
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/cmcm/orion/picks/impl/player/a;->b(I)V

    .line 161
    return-void
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/a;->a()I

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->a:Lcom/cmcm/orion/picks/impl/player/a;

    invoke-virtual {v0}, Lcom/cmcm/orion/picks/impl/player/a;->b()V

    .line 194
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 178
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/VastReceiver;->a(Landroid/content/Context;)V

    .line 179
    invoke-static {p0}, Lcom/cmcm/orion/picks/impl/VastReceiver;->a(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 180
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 185
    :try_start_0
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 186
    invoke-static {p0}, Lcom/cmcm/orion/picks/impl/VastReceiver;->b(Lcom/cmcm/orion/picks/impl/a$a;)V

    .line 187
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcm/orion/picks/impl/VastReceiver;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 120
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    invoke-static {v0, p1}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->getDefaultSize(II)I

    move-result v1

    .line 121
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    invoke-static {v0, p2}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->getDefaultSize(II)I

    move-result v0

    .line 122
    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 123
    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    if-lez v2, :cond_0

    .line 124
    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 125
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 140
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->setMeasuredDimension(II)V

    .line 141
    return-void

    .line 126
    :cond_1
    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 127
    iget v1, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_2
    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 131
    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    if-lez v2, :cond_0

    .line 132
    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_3

    .line 133
    iget v1, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_3
    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 135
    iget v0, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->c:I

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->b:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/cmcm/orion/picks/impl/player/Mp4Viewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 71
    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 72
    invoke-super {p0, p1}, Landroid/view/TextureView;->setBackgroundColor(I)V

    .line 74
    :cond_0
    return-void
.end method
