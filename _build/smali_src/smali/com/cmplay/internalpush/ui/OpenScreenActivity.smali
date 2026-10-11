.class public Lcom/cmplay/internalpush/ui/OpenScreenActivity;
.super Landroid/app/Activity;
.source "OpenScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/cmplay/base/util/gif/GifImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/cmplay/internalpush/data/g;

.field private j:Lcom/cmplay/base/util/gif/GifDrawable;

.field private k:Landroid/graphics/Bitmap;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/graphics/Bitmap;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a:Landroid/widget/RelativeLayout;

    .line 57
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->b:Landroid/widget/RelativeLayout;

    .line 58
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c:Lcom/cmplay/base/util/gif/GifImageView;

    .line 59
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->d:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->e:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->f:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->g:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->h:Landroid/widget/LinearLayout;

    .line 65
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    .line 66
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    .line 67
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    .line 68
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->l:Landroid/graphics/Bitmap;

    .line 69
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->m:Landroid/graphics/Bitmap;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->n:Ljava/util/List;

    return-void
.end method

.method private a(FLandroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 245
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 246
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 249
    float-to-double v2, p1

    const-wide v4, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 251
    div-float v1, v2, v1

    .line 252
    mul-float/2addr v1, v0

    .line 254
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 255
    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 256
    float-to-int v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 257
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 259
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/internalpush/ui/OpenScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const-string v1, "info_for_show"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/high16 v7, 0x41700000    # 15.0f

    const v12, 0x3f333333    # 0.7f

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 94
    if-eqz p1, :cond_5

    .line 95
    const-string v1, "info_for_show"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "internal_push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenScreenActivity.parseIntent strInfoForShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    new-instance v2, Lcom/cmplay/internalpush/data/g;

    invoke-direct {v2, v1}, Lcom/cmplay/internalpush/data/g;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    if-eqz v1, :cond_5

    .line 108
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/g;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 113
    :try_start_0
    new-instance v1, Lcom/cmplay/base/util/gif/GifDrawable;

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cmplay/base/util/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    .line 114
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v1}, Lcom/cmplay/base/util/gif/GifDrawable;->reset()V

    .line 115
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v1}, Lcom/cmplay/base/util/gif/GifDrawable;->start()V

    .line 117
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v1}, Lcom/cmplay/base/util/gif/GifDrawable;->getIntrinsicWidth()I
    :try_end_0
    .catch Lcom/cmplay/base/util/gif/GifIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    int-to-float v1, v1

    .line 118
    :try_start_1
    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v2}, Lcom/cmplay/base/util/gif/GifDrawable;->getIntrinsicHeight()I
    :try_end_1
    .catch Lcom/cmplay/base/util/gif/GifIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    int-to-float v0, v0

    .line 137
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 138
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 139
    const/16 v4, 0xc

    iget-object v5, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v5}, Lcom/cmplay/internalpush/data/g;->i()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 140
    if-le v3, v2, :cond_7

    move v4, v3

    .line 141
    :goto_1
    if-le v3, v2, :cond_8

    :goto_2
    move v3, v4

    .line 146
    :goto_3
    invoke-static {p0, v7}, Lcom/cmplay/base/util/j;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int v4, v3, v4

    int-to-float v5, v4

    .line 147
    invoke-static {p0, v7}, Lcom/cmplay/base/util/j;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v4, v4

    .line 149
    const-string v7, "internal_push"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseIntent  \tmInfoForShow.getDisplayType():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v9}, Lcom/cmplay/internalpush/data/g;->i()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\tbmWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  bmHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  screenWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "  screenHeight:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  bgLayoutWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  bgLayoutHeight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    div-float v2, v5, v1

    .line 155
    mul-float/2addr v2, v0

    .line 157
    cmpl-float v3, v2, v4

    if-lez v3, :cond_10

    .line 158
    div-float v0, v4, v0

    .line 159
    mul-float/2addr v0, v1

    move v1, v0

    move v0, v4

    .line 166
    :goto_4
    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 167
    float-to-int v3, v1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    float-to-int v3, v0

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    iget-object v3, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c:Lcom/cmplay/base/util/gif/GifImageView;

    invoke-virtual {v2}, Lcom/cmplay/base/util/gif/GifImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 173
    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    float-to-int v1, v0

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    if-eqz v1, :cond_c

    .line 176
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c:Lcom/cmplay/base/util/gif/GifImageView;

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v1, v2}, Lcom/cmplay/base/util/gif/GifImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v1, v0

    .line 184
    :goto_5
    const-wide v2, 0x3fcae147ae147ae1L    # 0.21

    .line 185
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->t()D

    move-result-wide v4

    .line 186
    const-wide/16 v8, 0x0

    cmpl-double v0, v4, v8

    if-lez v0, :cond_2

    cmpg-double v0, v4, v10

    if-gtz v0, :cond_2

    .line 187
    sub-double v2, v10, v4

    .line 189
    :cond_2
    float-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 190
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 191
    invoke-virtual {v0, v6, v6, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->l:Landroid/graphics/Bitmap;

    .line 196
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->l()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 199
    mul-float v0, v1, v12

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->l:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v2, v3}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a(FLandroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 203
    :goto_6
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->d:Landroid/widget/ImageView;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a(Landroid/view/View;I)V

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->m:Landroid/graphics/Bitmap;

    .line 213
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 214
    mul-float v0, v1, v12

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->m:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a(FLandroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 215
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->e:Landroid/widget/ImageView;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a(Landroid/view/View;I)V

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 227
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c:Lcom/cmplay/base/util/gif/GifImageView;

    invoke-virtual {v0, p0}, Lcom/cmplay/base/util/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    :goto_7
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/g;->u()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v6

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :cond_5
    invoke-direct {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c()V

    .line 240
    return-void

    .line 119
    :catch_0
    move-exception v1

    move v1, v0

    .line 121
    :goto_9
    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v2}, Lcom/cmplay/internalpush/data/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    .line 122
    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    .line 123
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 124
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_0

    .line 126
    :cond_6
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->finish()V

    goto/16 :goto_0

    .line 130
    :catch_1
    move-exception v1

    move-object v2, v1

    move v1, v0

    .line 131
    :goto_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    move v4, v2

    .line 140
    goto/16 :goto_1

    :cond_8
    move v2, v3

    .line 141
    goto/16 :goto_2

    .line 143
    :cond_9
    if-le v3, v2, :cond_a

    move v4, v2

    .line 144
    :goto_b
    if-le v3, v2, :cond_b

    :goto_c
    move v2, v3

    move v3, v4

    goto/16 :goto_3

    :cond_a
    move v4, v3

    .line 143
    goto :goto_b

    :cond_b
    move v3, v2

    .line 144
    goto :goto_c

    .line 177
    :cond_c
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d

    .line 178
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c:Lcom/cmplay/base/util/gif/GifImageView;

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/cmplay/base/util/gif/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_d
    move v1, v0

    goto/16 :goto_5

    .line 201
    :cond_e
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->l:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v0, v2}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a(FLandroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    .line 224
    :pswitch_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 235
    :cond_f
    const/16 v0, 0x8

    goto :goto_8

    .line 130
    :catch_2
    move-exception v2

    goto :goto_a

    .line 119
    :catch_3
    move-exception v2

    goto :goto_9

    :cond_10
    move v0, v2

    move v1, v5

    goto/16 :goto_4

    .line 222
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 432
    sget-object v0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->o:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 436
    :goto_0
    return-object v0

    .line 435
    :cond_0
    sget-object v0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    if-eqz v0, :cond_0

    .line 422
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/g;->i()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 423
    const/4 v0, 0x0

    .line 427
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->setRequestedOrientation(I)V

    .line 429
    :cond_0
    return-void

    .line 425
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 391
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/n;->d(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 392
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->finish()V

    .line 393
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

    .line 402
    const-string v0, "scaleX"

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/a/a/i;->a(Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v0

    .line 403
    const-string v1, "scaleY"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Lcom/a/a/i;->a(Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v1

    .line 404
    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    invoke-static {v2, v3}, Lcom/a/a/i;->a(Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v2

    .line 405
    new-array v3, v4, [Lcom/a/a/i;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {p1, v3}, Lcom/a/a/g;->a(Ljava/lang/Object;[Lcom/a/a/i;)Lcom/a/a/g;

    move-result-object v0

    .line 406
    invoke-virtual {v0, v5}, Lcom/a/a/g;->a(I)V

    .line 407
    invoke-virtual {v0, v5}, Lcom/a/a/g;->b(I)V

    .line 408
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/g;->a(J)Lcom/a/a/g;

    .line 409
    invoke-virtual {v0}, Lcom/a/a/g;->a()V

    .line 410
    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->n:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    return-void

    .line 402
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 403
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 404
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onBackPressed()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/n;->c(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)Z

    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 359
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 385
    :goto_0
    return-void

    .line 369
    :pswitch_0
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/n;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 370
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->finish()V

    goto :goto_0

    .line 374
    :pswitch_1
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a()V

    goto :goto_0

    .line 379
    :pswitch_2
    invoke-static {}, Lcom/cmplay/internalpush/n;->a()Lcom/cmplay/internalpush/n;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->i:Lcom/cmplay/internalpush/data/g;

    invoke-virtual {v0, p0, v1}, Lcom/cmplay/internalpush/n;->b(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 416
    invoke-direct {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c()V

    .line 417
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->o:Ljava/lang/ref/WeakReference;

    .line 264
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cmplay/internalpush/R$layout;->activity_open_screen:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 266
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->setContentView(Landroid/view/View;)V

    .line 268
    sget v0, Lcom/cmplay/internalpush/R$id;->root_view:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a:Landroid/widget/RelativeLayout;

    .line 269
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 270
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    sget v0, Lcom/cmplay/internalpush/R$id;->bg_layout:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->b:Landroid/widget/RelativeLayout;

    .line 273
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 274
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    sget v0, Lcom/cmplay/internalpush/R$id;->ad_bg_image:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cmplay/base/util/gif/GifImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c:Lcom/cmplay/base/util/gif/GifImageView;

    .line 277
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c:Lcom/cmplay/base/util/gif/GifImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/cmplay/base/util/gif/GifImageView;->setId(I)V

    .line 278
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->c:Lcom/cmplay/base/util/gif/GifImageView;

    invoke-virtual {v0, p0}, Lcom/cmplay/base/util/gif/GifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    sget v0, Lcom/cmplay/internalpush/R$id;->try_parent:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->h:Landroid/widget/LinearLayout;

    .line 282
    sget v0, Lcom/cmplay/internalpush/R$id;->try_btn:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->d:Landroid/widget/ImageView;

    .line 283
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 284
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    sget v0, Lcom/cmplay/internalpush/R$id;->try_btn2:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->e:Landroid/widget/ImageView;

    .line 287
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->e:Landroid/widget/ImageView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 288
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    sget v0, Lcom/cmplay/internalpush/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->f:Landroid/widget/ImageView;

    .line 291
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 292
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    sget v0, Lcom/cmplay/internalpush/R$id;->ad_tag:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->g:Landroid/widget/ImageView;

    .line 297
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/g;

    .line 321
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/a/a/g;->b()V

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 327
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 329
    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->k:Landroid/graphics/Bitmap;

    .line 330
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifDrawable;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifDrawable;->stop()V

    .line 335
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/cmplay/base/util/gif/GifDrawable;->recycle()V

    .line 336
    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->j:Lcom/cmplay/base/util/gif/GifDrawable;

    .line 337
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->l:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 342
    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->l:Landroid/graphics/Bitmap;

    .line 343
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 347
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 348
    iput-object v2, p0, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->m:Landroid/graphics/Bitmap;

    .line 349
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 351
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 352
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/ui/OpenScreenActivity;->a(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 310
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 304
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 316
    return-void
.end method
