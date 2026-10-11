.class public Lcom/mnt/impl/a/b;
.super Lcom/mnt/impl/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Lcom/mnt/Ad;

.field private f:Lcom/mnt/impl/b;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/mnt/impl/e;->px:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mnt/impl/a;-><init>(Landroid/app/Activity;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mnt/impl/a/b;->h:Z

    .line 87
    iput-object p1, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/mnt/impl/a/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mnt/impl/a/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/mnt/Ad;)V
    .locals 4

    .prologue
    .line 531
    move-object v0, p1

    check-cast v0, Lcom/mnt/impl/e/c;

    .line 532
    new-instance v1, Lcom/mnt/impl/g/a;

    iget-object v2, p0, Lcom/mnt/impl/a/b;->k:Landroid/widget/ImageView;

    sget-object v3, Lcom/mnt/Ad;->AD_CREATIVE_SIZE_1200x627:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mnt/impl/e/c;->getCreatives(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/mnt/impl/c/a;->b:Lcom/mnt/impl/c/a;

    .line 13022
    iget v3, v3, Lcom/mnt/impl/c/a;->c:I

    .line 532
    invoke-direct {v1, v2, v0}, Lcom/mnt/impl/g/a;-><init>(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mnt/impl/g/a;->c()V

    .line 533
    iget-object v0, p0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mnt/Ad;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mnt/Ad;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-boolean v0, p0, Lcom/mnt/impl/a/b;->h:Z

    if-nez v0, :cond_0

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mnt/impl/a/b;->h:Z

    .line 537
    iget-object v0, p0, Lcom/mnt/impl/a/b;->f:Lcom/mnt/impl/b;

    invoke-virtual {v0, p1}, Lcom/mnt/impl/b;->b(Ljava/lang/Object;)V

    .line 539
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mnt/impl/a/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method private c()Landroid/view/View;
    .locals 18

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mnt/impl/a/b;->b:I

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mnt/impl/a/b;->c:I

    .line 237
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mnt/impl/a/b;->c:I

    int-to-double v2, v2

    const-wide v4, 0x3ffb5c28f5c28f5cL    # 1.71

    div-double/2addr v2, v4

    double-to-int v2, v2

    .line 238
    move-object/from16 v0, p0

    iget v3, v0, Lcom/mnt/impl/a/b;->b:I

    int-to-double v4, v3

    const-wide v6, 0x3ff47ae147ae147bL    # 1.28

    div-double/2addr v4, v6

    double-to-int v3, v4

    .line 241
    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 242
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 247
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 248
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 249
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 251
    const/16 v7, 0xd

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 252
    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 256
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 257
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    int-to-double v10, v2

    const-wide v12, 0x3ff547ae147ae148L    # 1.33

    div-double/2addr v10, v12

    double-to-int v9, v10

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 260
    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    new-instance v7, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 263
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v9, v3, 0x2

    int-to-double v10, v2

    const-wide v12, 0x3ff547ae147ae148L    # 1.33

    div-double/2addr v10, v12

    double-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 264
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/mnt/impl/a/b;->k:Landroid/widget/ImageView;

    .line 267
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->k:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 268
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mnt/impl/a/b;->k:Landroid/widget/ImageView;

    invoke-virtual {v7, v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    new-instance v8, Lcom/mnt/impl/view/AdChoicesView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/mnt/impl/view/AdChoicesView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-static {v10, v11}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    new-instance v7, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 280
    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    .line 283
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/16 v10, 0xa

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 284
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    sget-object v8, Lcom/mnt/impl/l/a;->b:Lcom/mnt/impl/l/a;

    .line 285
    invoke-virtual {v8}, Lcom/mnt/impl/l/a;->a()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    .line 284
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 287
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v8, v2, 0x11

    div-int/lit8 v9, v2, 0x11

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 290
    const/16 v8, 0xb

    const/4 v9, -0x1

    invoke-virtual {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 292
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    new-instance v9, Lcom/mnt/impl/a/e;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/mnt/impl/a/e;-><init>(Lcom/mnt/impl/a/b;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 310
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 311
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 314
    invoke-virtual {v7, v6, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    .line 318
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 320
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    div-int/lit8 v9, v3, 0x23

    int-to-double v10, v3

    const-wide v12, 0x404ac8f5c28f5c29L    # 53.57

    div-double/2addr v10, v12

    double-to-int v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 322
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    const/4 v9, 0x0

    div-int/lit8 v10, v2, 0xa

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 323
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    sget-object v9, Lcom/mnt/impl/e;->pD:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 327
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    invoke-virtual {v6, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 331
    sget-object v9, Lcom/mnt/impl/e;->pE:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 332
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 334
    int-to-double v10, v3

    const-wide v12, 0x404ac8f5c28f5c29L    # 53.57

    div-double/2addr v10, v12

    double-to-int v10, v10

    int-to-double v12, v3

    const-wide v14, 0x404ac8f5c28f5c29L    # 53.57

    div-double/2addr v12, v14

    double-to-int v11, v12

    int-to-double v12, v3

    const-wide v14, 0x404ac8f5c28f5c29L    # 53.57

    div-double/2addr v12, v14

    double-to-int v12, v12

    int-to-double v14, v3

    const-wide v16, 0x404ac8f5c28f5c29L    # 53.57

    div-double v14, v14, v16

    double-to-int v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 336
    invoke-virtual {v6, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    .line 340
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    div-int/lit8 v9, v3, 0x23

    const/4 v10, 0x0

    div-int/lit8 v11, v3, 0x23

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 341
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    const/4 v9, 0x0

    div-int/lit8 v10, v2, 0xf

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 342
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    sget-object v9, Lcom/mnt/impl/e;->pF:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 345
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 348
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v6, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 352
    sget-object v8, Lcom/mnt/impl/e;->pG:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 353
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, 0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 355
    int-to-double v10, v3

    const-wide v12, 0x404ac8f5c28f5c29L    # 53.57

    div-double/2addr v10, v12

    double-to-int v9, v10

    int-to-double v10, v3

    const-wide v12, 0x404ac8f5c28f5c29L    # 53.57

    div-double/2addr v10, v12

    double-to-int v10, v10

    int-to-double v12, v3

    const-wide v14, 0x404ac8f5c28f5c29L    # 53.57

    div-double/2addr v12, v14

    double-to-int v11, v12

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 357
    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 358
    invoke-virtual {v7, v6, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 363
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    int-to-double v10, v2

    const-wide v12, 0x400fd70a3d70a3d7L    # 3.98

    div-double/2addr v10, v12

    double-to-int v9, v10

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 366
    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 370
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setGravity(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-static {v7}, Lcom/mnt/impl/e/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 372
    sget-object v7, Lcom/mnt/impl/e;->pH:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTextColor(I)V

    .line 373
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 374
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 375
    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 376
    sget-object v8, Lcom/mnt/impl/e;->pI:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 377
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    const/4 v7, 0x0

    div-int/lit8 v8, v2, 0xe

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 379
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 381
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v8, v3

    const-wide v10, 0x4002666666666666L    # 2.3

    div-double/2addr v8, v10

    double-to-int v3, v8

    int-to-double v8, v2

    const-wide v10, 0x4018ae147ae147aeL    # 6.17

    div-double/2addr v8, v10

    double-to-int v2, v8

    invoke-direct {v7, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 383
    const/16 v2, 0xd

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 384
    invoke-virtual {v6, v5, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-object v4
.end method

.method private d()Landroid/view/View;
    .locals 12

    .prologue
    .line 397
    iget-object v0, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/mnt/impl/a/b;->b:I

    .line 398
    iget-object v0, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mnt/impl/b/k;->b(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/mnt/impl/a/b;->c:I

    .line 399
    iget v0, p0, Lcom/mnt/impl/a/b;->c:I

    int-to-double v0, v0

    const-wide v2, 0x3ffa8f5c28f5c28fL    # 1.66

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 400
    iget v1, p0, Lcom/mnt/impl/a/b;->b:I

    int-to-double v2, v1

    const-wide v4, 0x3ff6b851eb851eb8L    # 1.42

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 403
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 404
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 407
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 411
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 412
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 413
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 416
    const/16 v5, 0xd

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 417
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 421
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 422
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mnt/impl/a/b;->k:Landroid/widget/ImageView;

    .line 426
    iget-object v5, p0, Lcom/mnt/impl/a/b;->k:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 427
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v6, v0

    const-wide v8, 0x4001eb851eb851ecL    # 2.24

    div-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v5, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 428
    iget-object v6, p0, Lcom/mnt/impl/a/b;->k:Landroid/widget/ImageView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    new-instance v5, Lcom/mnt/impl/view/AdChoicesView;

    iget-object v6, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/mnt/impl/view/AdChoicesView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v7, v8}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v8, v9}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    .line 433
    iget-object v5, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 434
    iget-object v5, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    sget-object v6, Lcom/mnt/impl/l/a;->b:Lcom/mnt/impl/l/a;

    .line 435
    invoke-virtual {v6}, Lcom/mnt/impl/l/a;->a()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 434
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v5, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v6, v0, 0x19

    div-int/lit8 v7, v0, 0x19

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 440
    const/16 v6, 0xb

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 442
    iget-object v6, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    new-instance v7, Lcom/mnt/impl/a/f;

    invoke-direct {v7, p0}, Lcom/mnt/impl/a/f;-><init>(Lcom/mnt/impl/a/b;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v6, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    .line 460
    iget-object v4, p0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    const/4 v5, 0x0

    div-int/lit8 v6, v1, 0xf

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 461
    iget-object v4, p0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    sget-object v5, Lcom/mnt/impl/e;->pJ:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    iget-object v4, p0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 463
    iget-object v4, p0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    const/4 v5, 0x0

    div-int/lit8 v6, v0, 0x32

    const/4 v7, 0x0

    div-int/lit8 v8, v0, 0x32

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 464
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 467
    iget-object v5, p0, Lcom/mnt/impl/a/b;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 472
    sget-object v5, Lcom/mnt/impl/e;->pK:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 473
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 475
    div-int/lit8 v6, v1, 0x2a

    const/4 v7, 0x0

    div-int/lit8 v8, v1, 0x2a

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 476
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    .line 480
    iget-object v4, p0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    int-to-double v6, v1

    const-wide v8, 0x40246b851eb851ecL    # 10.21

    div-double/2addr v6, v8

    double-to-int v5, v6

    int-to-double v6, v0

    const-wide v8, 0x403b851eb851eb85L    # 27.52

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v8, v1

    const-wide v10, 0x40246b851eb851ecL    # 10.21

    div-double/2addr v8, v10

    double-to-int v7, v8

    int-to-double v8, v0

    const-wide v10, 0x403b851eb851eb85L    # 27.52

    div-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 482
    iget-object v4, p0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    const/4 v5, 0x0

    div-int/lit8 v6, v1, 0x14

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 483
    iget-object v4, p0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    sget-object v5, Lcom/mnt/impl/e;->pL:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 484
    iget-object v4, p0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 485
    iget-object v4, p0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 486
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 489
    iget-object v5, p0, Lcom/mnt/impl/a/b;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 495
    sget-object v5, Lcom/mnt/impl/e;->pM:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 496
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 498
    div-int/lit8 v6, v1, 0x2a

    const/4 v7, 0x0

    div-int/lit8 v8, v1, 0x2a

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 499
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    new-instance v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 505
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setGravity(I)V

    .line 506
    iget-object v5, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-static {v5}, Lcom/mnt/impl/e/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 507
    sget-object v5, Lcom/mnt/impl/e;->pN:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 508
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 509
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 510
    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 511
    sget-object v6, Lcom/mnt/impl/e;->pO:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 512
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    const/4 v5, 0x0

    int-to-double v6, v0

    const-wide v8, 0x40377851eb851eb8L    # 23.47

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/Button;->setTextSize(IF)V

    .line 515
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 517
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 520
    int-to-double v6, v1

    const-wide v8, 0x402ed70a3d70a3d7L    # 15.42

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v8, v0

    const-wide v10, 0x403da3d70a3d70a4L    # 29.64

    div-double/2addr v8, v10

    double-to-int v7, v8

    int-to-double v8, v1

    const-wide v10, 0x402ed70a3d70a3d7L    # 15.42

    div-double/2addr v8, v10

    double-to-int v1, v8

    int-to-double v8, v0

    const-wide v10, 0x403da3d70a3d70a4L    # 29.64

    div-double/2addr v8, v10

    double-to-int v0, v8

    invoke-virtual {v5, v6, v7, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 522
    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    return-object v2
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 600
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    iget-object v0, v0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClosed()V

    .line 603
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 544
    invoke-super {p0, p1}, Lcom/mnt/impl/a;->a(Landroid/content/res/Configuration;)V

    .line 545
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    check-cast v0, Lcom/mnt/impl/e/c;

    .line 546
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 568
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 569
    iget-object v1, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 570
    return-void

    .line 548
    :pswitch_0
    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getAppType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 549
    invoke-direct {p0}, Lcom/mnt/impl/a/b;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    .line 550
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-direct {p0, v0}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/Ad;)V

    goto :goto_0

    .line 551
    :cond_1
    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getAppType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/mnt/impl/a/b;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    .line 553
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-direct {p0, v0}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/Ad;)V

    goto :goto_0

    .line 557
    :pswitch_1
    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getAppType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 558
    invoke-direct {p0}, Lcom/mnt/impl/a/b;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    .line 559
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-direct {p0, v0}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/Ad;)V

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getAppType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/mnt/impl/a/b;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    .line 562
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-direct {p0, v0}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/Ad;)V

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 585
    invoke-super {p0, p1}, Lcom/mnt/impl/a;->a(Landroid/os/Bundle;)V

    .line 586
    sget-object v0, Lcom/mnt/impl/e;->pP:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/mnt/impl/a/b;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    sget-object v0, Lcom/mnt/impl/e;->pQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/a/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget-object v0, Lcom/mnt/impl/e;->pR:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 589
    sget-object v0, Lcom/mnt/impl/a/h;->i:Ljava/lang/String;

    iget v1, p0, Lcom/mnt/impl/a/b;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 590
    sget-object v0, Lcom/mnt/impl/a/h;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/mnt/impl/a/b;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 126
    iget v0, p0, Lcom/mnt/impl/a/b;->i:I

    if-ne v0, v1, :cond_0

    .line 11033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 126
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 12033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 129
    :cond_0
    invoke-super {p0}, Lcom/mnt/impl/a;->b()V

    .line 130
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 93
    if-eqz p1, :cond_2

    .line 94
    :try_start_0
    sget-object v0, Lcom/mnt/impl/e;->py:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mnt/impl/a/b;->h:Z

    .line 95
    sget-object v0, Lcom/mnt/impl/e;->pz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->g:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/mnt/impl/e;->pA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mnt/Ad;

    iput-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    .line 97
    sget-object v0, Lcom/mnt/impl/a/h;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mnt/impl/a/b;->i:I

    .line 98
    sget-object v0, Lcom/mnt/impl/a/h;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->j:Ljava/lang/String;

    .line 105
    :goto_0
    iget v0, p0, Lcom/mnt/impl/a/b;->i:I

    if-ne v0, v4, :cond_3

    .line 4133
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    .line 5073
    iget-object v0, v0, Lcom/mnt/impl/a/g;->c:Landroid/view/View;

    .line 4133
    check-cast v0, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;

    .line 4134
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4135
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v4, 0x43a00000    # 320.0f

    invoke-static {v1, v4}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v5, 0x43f00000    # 480.0f

    invoke-static {v4, v5}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4136
    const/16 v1, 0xd

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4137
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4138
    sget-object v1, Lcom/mnt/impl/e;->pB:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 4139
    invoke-virtual {v0}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4140
    if-eqz v1, :cond_0

    .line 4141
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4143
    :cond_0
    new-instance v1, Lcom/mnt/impl/a/c;

    invoke-direct {v1, p0, v0}, Lcom/mnt/impl/a/c;-><init>(Lcom/mnt/impl/a/b;Lcom/mnt/impl/dsp/DspHelper$BannerWebView;)V

    invoke-virtual {v0, v1}, Lcom/mnt/impl/dsp/DspHelper$BannerWebView;->setOnWebViewClickListener(Lcom/mnt/impl/dsp/b;)V

    .line 4165
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-static {v5, v6}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v7, 0x41c80000    # 25.0f

    invoke-static {v6, v7}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4166
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    .line 4167
    const/16 v5, 0x35

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4168
    iget-object v5, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v7, v8}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {v8, v9}, Lcom/mnt/impl/b/k;->a(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 4169
    iget-object v5, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4170
    iget-object v5, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    sget-object v6, Lcom/mnt/impl/l/a;->b:Lcom/mnt/impl/l/a;

    invoke-virtual {v6}, Lcom/mnt/impl/l/a;->a()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4171
    iget-object v5, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    new-instance v6, Lcom/mnt/impl/a/d;

    invoke-direct {v6, p0}, Lcom/mnt/impl/a/d;-><init>(Lcom/mnt/impl/a/b;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4181
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4182
    iget-object v0, p0, Lcom/mnt/impl/a/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v4, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4183
    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 4184
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 6191
    :cond_1
    :goto_1
    return-void

    .line 1033
    :cond_2
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/a/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mnt/Ad;

    iput-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    .line 2033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/a/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->g:Ljava/lang/String;

    .line 3033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/a/h;->i:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mnt/impl/a/b;->i:I

    .line 4033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 103
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/mnt/impl/a/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 114
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 116
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 117
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    iget-object v0, v0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClosed()V

    goto :goto_1

    .line 107
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/mnt/impl/a/b;->i:I

    if-ne v0, v3, :cond_b

    .line 6188
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    if-nez v0, :cond_4

    .line 7033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 6190
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 6193
    :cond_4
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    .line 7049
    iget-object v1, v0, Lcom/mnt/impl/a/g;->b:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_6

    .line 7050
    iget-object v0, v0, Lcom/mnt/impl/a/g;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mnt/impl/b;

    .line 6193
    :goto_2
    iput-object v0, p0, Lcom/mnt/impl/a/b;->f:Lcom/mnt/impl/b;

    .line 6194
    iget-object v0, p0, Lcom/mnt/impl/a/b;->f:Lcom/mnt/impl/b;

    if-nez v0, :cond_5

    .line 6195
    new-instance v0, Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mnt/impl/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mnt/impl/a/b;->f:Lcom/mnt/impl/b;

    .line 6197
    :cond_5
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    check-cast v0, Lcom/mnt/impl/e/c;

    .line 6198
    iget-object v1, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/b/k;->c(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 6199
    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getAppType()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 6200
    invoke-direct {p0}, Lcom/mnt/impl/a/b;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    .line 6201
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-direct {p0, v0}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/Ad;)V

    .line 6224
    :goto_3
    iget-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 6225
    iget-object v1, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 7052
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 6202
    :cond_7
    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getAppType()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 6203
    invoke-direct {p0}, Lcom/mnt/impl/a/b;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    .line 6204
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-direct {p0, v0}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/Ad;)V

    goto :goto_3

    .line 6206
    :cond_8
    invoke-direct {p0}, Lcom/mnt/impl/a/b;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    .line 6207
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-direct {p0, v0}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/Ad;)V

    goto :goto_3

    .line 6209
    :cond_9
    iget-object v1, p0, Lcom/mnt/impl/a/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/mnt/impl/b/k;->c(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_a

    .line 6210
    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getAppType()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 6213
    invoke-virtual {v0}, Lcom/mnt/impl/e/c;->getAppType()I

    .line 6221
    :cond_a
    invoke-direct {p0}, Lcom/mnt/impl/a/b;->c()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mnt/impl/a/b;->n:Landroid/view/View;

    .line 6222
    iget-object v0, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-direct {p0, v0}, Lcom/mnt/impl/a/b;->a(Lcom/mnt/Ad;)V

    goto :goto_3

    .line 9033
    :cond_b
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 575
    .line 14033
    iget-object v0, p0, Lcom/mnt/impl/a;->a:Landroid/app/Activity;

    .line 575
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 576
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    invoke-static {}, Lcom/mnt/impl/a/g;->a()Lcom/mnt/impl/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mnt/impl/a/g;->b()Lcom/mnt/MntBuild;

    move-result-object v0

    iget-object v0, v0, Lcom/mnt/MntBuild;->mAdListener:Lcom/mnt/IAdListener;

    invoke-interface {v0}, Lcom/mnt/IAdListener;->onAdClicked()V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/mnt/impl/a/b;->f:Lcom/mnt/impl/b;

    iget-object v1, p0, Lcom/mnt/impl/a/b;->e:Lcom/mnt/Ad;

    invoke-virtual {v0, v1}, Lcom/mnt/impl/b;->a(Ljava/lang/Object;)V

    .line 580
    return-void
.end method
