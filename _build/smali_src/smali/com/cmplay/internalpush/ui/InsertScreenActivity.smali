.class public Lcom/cmplay/internalpush/ui/InsertScreenActivity;
.super Landroid/app/Activity;
.source "InsertScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/a/a/g;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/cmplay/internalpush/data/f;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->b:Landroid/widget/RelativeLayout;

    .line 42
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->c:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->d:Landroid/widget/ImageView;

    .line 44
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->e:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->f:Landroid/widget/ImageView;

    .line 47
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    .line 48
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->h:Landroid/graphics/Bitmap;

    .line 49
    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->i:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic a(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInfoForShow.getDisplayType() ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/f;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmplay/base/util/g;->a(Ljava/lang/String;)V

    .line 295
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v1}, Lcom/cmplay/internalpush/data/f;->i()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 296
    const/4 v0, 0x0

    .line 300
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->setRequestedOrientation(I)V

    .line 302
    :cond_0
    return-void

    .line 298
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cmplay/internalpush/ui/InsertScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const-string v1, "info_for_show"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p1, :cond_3

    .line 117
    const-string v0, "info_for_show"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "internal_push"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InsertScreenActivity.parseIntent strInfoForShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmplay/base/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Lcom/cmplay/internalpush/data/f;

    invoke-direct {v1, v0}, Lcom/cmplay/internalpush/data/f;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/f;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/f;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->h:Landroid/graphics/Bitmap;

    .line 127
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/f;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/f;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->i:Landroid/graphics/Bitmap;

    .line 133
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->e:Landroid/widget/ImageView;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Landroid/view/View;I)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity$1;-><init>(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 153
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v0}, Lcom/cmplay/internalpush/data/f;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a()V

    .line 168
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Lcom/cmplay/internalpush/data/f;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    return-object v0
.end method

.method static synthetic c(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/cmplay/internalpush/ui/InsertScreenActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
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

    .line 275
    const-string v0, "scaleX"

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/a/a/i;->a(Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v0

    .line 276
    const-string v1, "scaleY"

    new-array v2, v4, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v2}, Lcom/a/a/i;->a(Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v1

    .line 277
    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    invoke-static {v2, v3}, Lcom/a/a/i;->a(Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v2

    .line 278
    new-array v3, v4, [Lcom/a/a/i;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {p1, v3}, Lcom/a/a/g;->a(Ljava/lang/Object;[Lcom/a/a/i;)Lcom/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a:Lcom/a/a/g;

    .line 279
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a:Lcom/a/a/g;

    invoke-virtual {v0, v5}, Lcom/a/a/g;->a(I)V

    .line 280
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a:Lcom/a/a/g;

    invoke-virtual {v0, v5}, Lcom/a/a/g;->b(I)V

    .line 281
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a:Lcom/a/a/g;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/a/a/g;->a(J)Lcom/a/a/g;

    .line 282
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->a()V

    .line 283
    return-void

    .line 275
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 276
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    .line 277
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/ImageView;ZIF)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 77
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 78
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 79
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v2

    div-float/2addr v0, v3

    .line 80
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 82
    cmpg-float v3, v0, v1

    if-gez v3, :cond_0

    move v1, v0

    .line 85
    :cond_0
    int-to-float v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v2, v0

    .line 87
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    if-eqz p3, :cond_3

    .line 89
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ltz v3, :cond_1

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-gez v3, :cond_2

    .line 90
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 91
    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 93
    :cond_2
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 94
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 97
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v4

    .line 99
    const/4 v3, 0x1

    if-ne p4, v3, :cond_6

    .line 101
    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 102
    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 107
    :cond_4
    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-lez v0, :cond_5

    .line 109
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setY(F)V

    .line 111
    :cond_5
    return-void

    .line 103
    :cond_6
    const/4 v0, 0x2

    if-ne p4, v0, :cond_4

    .line 105
    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 243
    invoke-static {}, Lcom/cmplay/internalpush/j;->a()Lcom/cmplay/internalpush/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/j;->b(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)Z

    .line 244
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 254
    :pswitch_0
    invoke-static {}, Lcom/cmplay/internalpush/j;->a()Lcom/cmplay/internalpush/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/j;->a(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 255
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->finish()V

    goto :goto_0

    .line 259
    :pswitch_1
    invoke-static {}, Lcom/cmplay/internalpush/j;->a()Lcom/cmplay/internalpush/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->g:Lcom/cmplay/internalpush/data/f;

    invoke-virtual {v0, v1, v2}, Lcom/cmplay/internalpush/j;->c(Landroid/content/Context;Lcom/cmplay/internalpush/data/d;)V

    .line 260
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->finish()V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 288
    invoke-direct {p0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a()V

    .line 289
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cmplay/internalpush/R$layout;->activity_insert_screen:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->setContentView(Landroid/view/View;)V

    .line 177
    sget v0, Lcom/cmplay/internalpush/R$id;->root_view:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->b:Landroid/widget/RelativeLayout;

    .line 178
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 179
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    sget v0, Lcom/cmplay/internalpush/R$id;->bg_layout:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->c:Landroid/widget/RelativeLayout;

    .line 182
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 183
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget v0, Lcom/cmplay/internalpush/R$id;->ad_bg_image:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->d:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->d:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 187
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    sget v0, Lcom/cmplay/internalpush/R$id;->try_btn:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->e:Landroid/widget/ImageView;

    .line 190
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 191
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    sget v0, Lcom/cmplay/internalpush/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->f:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->f:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 195
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Landroid/content/Intent;)V

    .line 198
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a:Lcom/a/a/g;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a:Lcom/a/a/g;

    invoke-virtual {v0}, Lcom/a/a/g;->b()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->h:Landroid/graphics/Bitmap;

    .line 229
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 233
    iput-object v1, p0, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->i:Landroid/graphics/Bitmap;

    .line 234
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 236
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 237
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/cmplay/internalpush/ui/InsertScreenActivity;->a(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 210
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 204
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 216
    return-void
.end method
