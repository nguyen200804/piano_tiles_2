.class public Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ShimmerLJYFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;,
        Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;,
        Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;,
        Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;
    }
.end annotation


# static fields
.field private static final c:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field protected a:Landroid/animation/ValueAnimator;

.field protected b:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

.field private g:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->c:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    invoke-virtual {p0, v2}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->setWillNotDraw(Z)V

    .line 168
    new-instance v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;-><init>(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;)V

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->d:Landroid/graphics/Paint;

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->e:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 173
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 174
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->e:Landroid/graphics/Paint;

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->c:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 176
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a()V

    .line 178
    if-eqz p2, :cond_f

    .line 179
    sget-object v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout:[I

    invoke-virtual {p1, p2, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 181
    :try_start_0
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_auto_start:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_auto_start:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(Z)V

    .line 184
    :cond_0
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_base_alpha:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_base_alpha:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(F)V

    .line 187
    :cond_1
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_duration:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_duration:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(I)V

    .line 190
    :cond_2
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_repeat_count:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_repeat_count:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b(I)V

    .line 193
    :cond_3
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_repeat_delay:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_repeat_delay:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->c(I)V

    .line 196
    :cond_4
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_repeat_mode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_repeat_mode:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->d(I)V

    .line 200
    :cond_5
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_angle:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_angle:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 202
    sparse-switch v0, :sswitch_data_0

    .line 205
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget-object v2, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    iput-object v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    .line 219
    :cond_6
    :goto_0
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_shape:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 220
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_shape:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 221
    packed-switch v0, :pswitch_data_0

    .line 224
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget-object v2, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    iput-object v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->i:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    .line 232
    :cond_7
    :goto_1
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_dropoff:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget v2, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_dropoff:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->c:F

    .line 235
    :cond_8
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_fixed_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget v2, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_fixed_width:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->d:I

    .line 238
    :cond_9
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_fixed_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget v2, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_fixed_height:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->e:I

    .line 241
    :cond_a
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_intensity:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 242
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget v2, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_intensity:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->f:F

    .line 244
    :cond_b
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_relative_width:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget v2, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_relative_width:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->g:F

    .line 247
    :cond_c
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_relative_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 248
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget v2, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_relative_height:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->h:F

    .line 250
    :cond_d
    sget v0, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_tilt:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 251
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget v2, Lcom/duapps/ad/R$styleable;->ShimmerLJYFrameLayout_tilt:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->b:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    :cond_f
    return-void

    .line 208
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget-object v2, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->b:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    iput-object v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 254
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    .line 211
    :sswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget-object v2, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->c:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    iput-object v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    goto/16 :goto_0

    .line 214
    :sswitch_2
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget-object v2, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->d:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    iput-object v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    goto/16 :goto_0

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget-object v2, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->b:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    iput-object v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->i:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(FFF)F
    .locals 1

    .prologue
    .line 714
    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected static a(II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 958
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 961
    :goto_0
    return-object v0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 961
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->e(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 723
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 724
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 725
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 726
    :cond_0
    const/4 v0, 0x0

    .line 736
    :goto_0
    return v0

    .line 729
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v2}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b(Landroid/graphics/Canvas;)V

    .line 730
    iget-object v2, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 733
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->c(Landroid/graphics/Canvas;)V

    .line 734
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 736
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->q:Z

    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 779
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 780
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 781
    return-void
.end method

.method static synthetic b(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h()V

    return-void
.end method

.method static synthetic b(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f(I)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 786
    if-nez v0, :cond_0

    .line 799
    :goto_0
    return-void

    .line 790
    :cond_0
    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->o:I

    iget v2, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->p:I

    iget v3, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->o:I

    .line 793
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->p:I

    .line 794
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 790
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 795
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 796
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 798
    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->o:I

    int-to-float v1, v1

    iget v2, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->p:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->j:Z

    return v0
.end method

.method private d()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 682
    new-instance v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;-><init>(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)V

    return-object v0
.end method

.method static synthetic d(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->g:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;

    return-object v0
.end method

.method private e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 741
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->i:Landroid/graphics/Bitmap;

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private e(I)V
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->o:I

    if-ne v0, p1, :cond_0

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_0
    iput p1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->o:I

    .line 656
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->invalidate()V

    goto :goto_0
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h:Landroid/graphics/Bitmap;

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private f(I)V
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->p:I

    if-ne v0, p1, :cond_0

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    iput p1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->p:I

    .line 669
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->invalidate()V

    goto :goto_0
.end method

.method private g()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 754
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getWidth()I

    move-result v0

    .line 755
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getHeight()I

    move-result v1

    .line 757
    :try_start_0
    invoke-static {v0, v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 774
    :goto_0
    return-object v0

    .line 758
    :catch_0
    move-exception v2

    .line 759
    const-string v2, "ShimmerFrameLayout failed to create working bitmap"

    .line 760
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 761
    const-string v2, " (width = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 763
    const-string v0, ", height = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 765
    const-string v0, ")\n\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v4, v1, v0

    .line 768
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 771
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    const-string v1, "ShimmerFrameLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 0

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->c()V

    .line 803
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->i()V

    .line 804
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->j()V

    .line 805
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 813
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 817
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 819
    iput-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->i:Landroid/graphics/Bitmap;

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 824
    iput-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h:Landroid/graphics/Bitmap;

    .line 826
    :cond_1
    return-void
.end method

.method private k()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const/4 v3, 0x0

    .line 830
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 902
    :goto_0
    return-object v0

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a(I)I

    move-result v9

    .line 835
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->b(I)I

    move-result v8

    .line 837
    invoke-static {v9, v8}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b:Landroid/graphics/Bitmap;

    .line 838
    new-instance v10, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b:Landroid/graphics/Bitmap;

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 840
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->a:[I

    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    iget-object v1, v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->i:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    invoke-virtual {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 845
    sget-object v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->b:[I

    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    iget-object v1, v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    invoke-virtual {v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 848
    neg-int v0, v9

    move v4, v3

    move v2, v3

    move v1, v0

    .line 872
    :goto_1
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    .line 876
    invoke-virtual {v5}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a()[I

    move-result-object v5

    iget-object v6, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    .line 877
    invoke-virtual {v6}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->b()[F

    move-result-object v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 895
    :goto_2
    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    iget v1, v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->b:F

    div-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v8, 0x2

    int-to-float v3, v3

    invoke-virtual {v10, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 896
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 897
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 899
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 900
    neg-int v1, v0

    int-to-float v1, v1

    neg-int v2, v0

    int-to-float v2, v2

    add-int v3, v9, v0

    int-to-float v3, v3

    add-int/2addr v0, v8

    int-to-float v4, v0

    move-object v0, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 902
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :pswitch_0
    move v4, v8

    move v2, v3

    move v1, v3

    .line 858
    goto :goto_1

    :pswitch_1
    move v4, v3

    move v2, v3

    move v1, v9

    .line 864
    goto :goto_1

    :pswitch_2
    move v4, v3

    move v2, v8

    move v1, v3

    .line 869
    goto :goto_1

    .line 882
    :pswitch_3
    div-int/lit8 v1, v9, 0x2

    .line 883
    div-int/lit8 v2, v8, 0x2

    .line 884
    new-instance v0, Landroid/graphics/RadialGradient;

    int-to-float v1, v1

    int-to-float v2, v2

    .line 888
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v4, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-float v3, v4

    iget-object v4, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    .line 889
    invoke-virtual {v4}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a()[I

    move-result-object v4

    iget-object v5, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    .line 890
    invoke-virtual {v5}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->b()[F

    move-result-object v5

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_2

    .line 840
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch

    .line 845
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private l()Landroid/animation/Animator;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 908
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    .line 944
    :goto_0
    return-object v0

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getWidth()I

    move-result v0

    .line 912
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getHeight()I

    move-result v1

    .line 913
    sget-object v2, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->a:[I

    iget-object v3, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    iget-object v3, v3, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->i:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    invoke-virtual {v3}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 916
    sget-object v2, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$3;->b:[I

    iget-object v3, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    iget-object v3, v3, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    invoke-virtual {v3}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 919
    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->g:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;

    neg-int v2, v0

    invoke-virtual {v1, v2, v4, v0, v4}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;->a(IIII)V

    .line 932
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->m:I

    int-to-float v3, v3

    iget v4, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->k:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    .line 933
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->k:I

    iget v2, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->m:I

    add-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 934
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->l:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 935
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->n:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 936
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$2;

    invoke-direct {v1, p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$2;-><init>(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 944
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 922
    :pswitch_0
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->g:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;

    neg-int v2, v1

    invoke-virtual {v0, v4, v2, v4, v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;->a(IIII)V

    goto :goto_1

    .line 925
    :pswitch_1
    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->g:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;

    neg-int v2, v0

    invoke-virtual {v1, v0, v4, v2, v4}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;->a(IIII)V

    goto :goto_1

    .line 928
    :pswitch_2
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->g:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;

    neg-int v2, v1

    invoke-virtual {v0, v4, v1, v4, v2}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;->a(IIII)V

    goto :goto_1

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0, v2}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(Z)V

    .line 266
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(I)V

    .line 267
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->b(I)V

    .line 268
    invoke-virtual {p0, v2}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->c(I)V

    .line 269
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->d(I)V

    .line 271
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    iput-object v1, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$b;

    .line 272
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    sget-object v1, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;->a:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    iput-object v1, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->i:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$c;

    .line 273
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->c:F

    .line 274
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    iput v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->d:I

    .line 275
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    iput v2, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->e:I

    .line 276
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->f:F

    .line 277
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    iput v3, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->g:F

    .line 278
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    iput v3, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->h:F

    .line 279
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->f:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;

    const/high16 v1, 0x42200000    # 40.0f

    iput v1, v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$a;->b:F

    .line 281
    new-instance v0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;-><init>(Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$1;)V

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->g:Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout$d;

    .line 283
    invoke-virtual {p0, v3}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(F)V

    .line 285
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h()V

    .line 286
    return-void
.end method

.method public a(F)V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(FFF)F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 325
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h()V

    .line 326
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 345
    iput p1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->k:I

    .line 346
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h()V

    .line 347
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->j:Z

    .line 306
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h()V

    .line 307
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->q:Z

    if-eqz v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 619
    :cond_0
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->l()Landroid/animation/Animator;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->q:Z

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 366
    iput p1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->l:I

    .line 367
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h()V

    .line 368
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 630
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 631
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 633
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a:Landroid/animation/ValueAnimator;

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->q:Z

    .line 635
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 386
    iput p1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->m:I

    .line 387
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h()V

    .line 388
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 409
    iput p1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->n:I

    .line 410
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->h()V

    .line 411
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 707
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 711
    :goto_0
    return-void

    .line 710
    :cond_1
    invoke-direct {p0, p1}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->a(Landroid/graphics/Canvas;)Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 674
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 675
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    .line 676
    invoke-direct {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->d()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 679
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->c()V

    .line 697
    iget-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/banner/view/ShimmerLJYFrameLayout;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 701
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 702
    return-void
.end method
