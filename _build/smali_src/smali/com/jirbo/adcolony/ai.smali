.class Lcom/jirbo/adcolony/ai;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static s:D

.field static t:Ljava/lang/String;

.field static u:Ljava/lang/String;

.field static v:Z

.field static w:Landroid/graphics/Paint;

.field static x:[F


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:Ljava/lang/String;

.field H:Lcom/jirbo/adcolony/p;

.field d:Lcom/jirbo/adcolony/c;

.field e:Lcom/jirbo/adcolony/c;

.field f:Lcom/jirbo/adcolony/c;

.field g:Lcom/jirbo/adcolony/c;

.field h:Lcom/jirbo/adcolony/c;

.field i:Lcom/jirbo/adcolony/c;

.field j:Lcom/jirbo/adcolony/c;

.field k:Lcom/jirbo/adcolony/c;

.field l:D

.field m:D

.field n:D

.field o:D

.field p:D

.field q:Z

.field r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jirbo/adcolony/c;",
            ">;"
        }
    .end annotation
.end field

.field y:J

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/jirbo/adcolony/ai;->t:Ljava/lang/String;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/jirbo/adcolony/ai;->u:Ljava/lang/String;

    .line 49
    sput-boolean v1, Lcom/jirbo/adcolony/ai;->v:Z

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    .line 53
    const/16 v0, 0x50

    new-array v0, v0, [F

    sput-object v0, Lcom/jirbo/adcolony/ai;->x:[F

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const-wide v0, 0x4006666666666666L    # 2.8

    iput-wide v0, p0, Lcom/jirbo/adcolony/ai;->l:D

    .line 34
    const-wide v0, 0x4000666666666666L    # 2.05

    iput-wide v0, p0, Lcom/jirbo/adcolony/ai;->m:D

    .line 35
    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v0, p0, Lcom/jirbo/adcolony/ai;->n:D

    .line 37
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    iput-wide v0, p0, Lcom/jirbo/adcolony/ai;->o:D

    .line 38
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    iput-wide v0, p0, Lcom/jirbo/adcolony/ai;->p:D

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jirbo/adcolony/ai;->r:Ljava/util/ArrayList;

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jirbo/adcolony/ai;->y:J

    .line 22
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 143
    sget-object v0, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    sget-object v1, Lcom/jirbo/adcolony/ai;->x:[F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 145
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 147
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    sget-object v3, Lcom/jirbo/adcolony/ai;->x:[F

    aget v3, v3, v0

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    float-to-int v0, v1

    return v0
.end method

.method a()V
    .locals 10

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/jirbo/adcolony/ai;->q:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 249
    :goto_0
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 250
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 251
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 253
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    iget v4, v4, Lcom/jirbo/adcolony/c;->f:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/jirbo/adcolony/ai;->z:I

    .line 254
    iget-object v3, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    iget v3, v3, Lcom/jirbo/adcolony/c;->g:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x50

    iput v2, p0, Lcom/jirbo/adcolony/ai;->A:I

    .line 255
    iget v2, p0, Lcom/jirbo/adcolony/ai;->z:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    iget v3, v3, Lcom/jirbo/adcolony/c;->f:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/ai;->B:I

    .line 256
    iget v2, p0, Lcom/jirbo/adcolony/ai;->A:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    iget v3, v3, Lcom/jirbo/adcolony/c;->g:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/ai;->C:I

    .line 258
    iget v2, p0, Lcom/jirbo/adcolony/ai;->A:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    iget v3, v3, Lcom/jirbo/adcolony/c;->g:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/ai;->f:Lcom/jirbo/adcolony/c;

    iget v3, v3, Lcom/jirbo/adcolony/c;->g:I

    int-to-double v6, v3

    sget-wide v8, Lcom/jirbo/adcolony/ai;->s:D

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/ai;->F:I

    .line 259
    iget v2, p0, Lcom/jirbo/adcolony/ai;->z:I

    sget-wide v4, Lcom/jirbo/adcolony/ai;->s:D

    mul-double/2addr v4, v0

    double-to-int v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/jirbo/adcolony/ai;->D:I

    .line 260
    iget v2, p0, Lcom/jirbo/adcolony/ai;->z:I

    iget-object v3, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    iget v3, v3, Lcom/jirbo/adcolony/c;->f:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/jirbo/adcolony/ai;->f:Lcom/jirbo/adcolony/c;

    iget v3, v3, Lcom/jirbo/adcolony/c;->f:I

    int-to-double v6, v3

    sget-wide v8, Lcom/jirbo/adcolony/ai;->s:D

    mul-double/2addr v0, v8

    add-double/2addr v0, v6

    sub-double v0, v4, v0

    double-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/jirbo/adcolony/ai;->E:I

    .line 261
    return-void

    .line 248
    :cond_0
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    goto :goto_0
.end method

.method a(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ai;->a(Ljava/lang/String;)I

    move-result v0

    .line 164
    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    .line 166
    sget-object v1, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    const v2, -0xf0f10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    add-int/lit8 v1, v0, 0x1

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x1

    int-to-float v2, v2

    sget-object v3, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 168
    sget-object v1, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    int-to-float v0, v0

    int-to-float v1, p3

    sget-object v2, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 170
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ai;->a(Ljava/lang/String;)I

    move-result v2

    .line 205
    const-string v0, ""

    sput-object v0, Lcom/jirbo/adcolony/ai;->t:Ljava/lang/String;

    .line 206
    const-string v0, ""

    sput-object v0, Lcom/jirbo/adcolony/ai;->u:Ljava/lang/String;

    .line 207
    const-string v0, ""

    .line 210
    iget-object v3, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    iget v3, v3, Lcom/jirbo/adcolony/c;->f:I

    const-string v4, "WW"

    invoke-virtual {p0, v4}, Lcom/jirbo/adcolony/ai;->a(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, p2}, Lcom/jirbo/adcolony/ai;->a(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_5

    .line 213
    sput-boolean v1, Lcom/jirbo/adcolony/ai;->v:Z

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 216
    :goto_0
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    iget v4, v4, Lcom/jirbo/adcolony/c;->f:I

    const-string v5, "WW"

    invoke-virtual {p0, v5}, Lcom/jirbo/adcolony/ai;->a(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p2}, Lcom/jirbo/adcolony/ai;->a(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    if-ge v0, v4, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    add-int/lit8 v2, v2, 0x1

    .line 216
    invoke-virtual {p0, v3}, Lcom/jirbo/adcolony/ai;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v4, v1

    move v5, v1

    .line 223
    :goto_1
    if-ge v4, v2, :cond_3

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x20

    if-ne v0, v6, :cond_1

    if-lt v4, v7, :cond_1

    .line 228
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jirbo/adcolony/ai;->t:Ljava/lang/String;

    move v0, v4

    .line 223
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    goto :goto_1

    .line 232
    :cond_1
    if-ge v5, v7, :cond_2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    sput-object v0, Lcom/jirbo/adcolony/ai;->t:Ljava/lang/String;

    move v0, v5

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/jirbo/adcolony/ai;->t:Ljava/lang/String;

    goto :goto_3

    .line 235
    :cond_3
    if-ge v5, v7, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    sput-object v0, Lcom/jirbo/adcolony/ai;->u:Ljava/lang/String;

    .line 244
    :goto_5
    return-void

    .line 235
    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 239
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ai;->v:Z

    .line 240
    sput-object p1, Lcom/jirbo/adcolony/ai;->t:Ljava/lang/String;

    .line 241
    const-string v0, ""

    sput-object v0, Lcom/jirbo/adcolony/ai;->u:Ljava/lang/String;

    goto :goto_5
.end method

.method a(IIII)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 193
    if-ge p1, p3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    if-lt p2, p4, :cond_0

    .line 195
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->f:Lcom/jirbo/adcolony/c;

    iget v1, v1, Lcom/jirbo/adcolony/c;->f:I

    add-int/2addr v1, p3

    if-ge p1, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->f:Lcom/jirbo/adcolony/c;

    iget v1, v1, Lcom/jirbo/adcolony/c;->g:I

    add-int/2addr v1, p4

    if-ge p2, v1, :cond_0

    .line 197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/jirbo/adcolony/ai;->a(Ljava/lang/String;)I

    move-result v0

    .line 175
    div-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    .line 177
    sget-object v1, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    const v2, -0x7f7f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    add-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    add-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    sget-object v3, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 179
    sget-object v1, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    int-to-float v0, v0

    int-to-float v1, p3

    sget-object v2, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 181
    return-void
.end method

.method public b()Z
    .locals 12

    .prologue
    const-wide v10, 0x4076800000000000L    # 360.0

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    const-wide v0, 0x3fe999999999999aL    # 0.8

    const/4 v7, 0x1

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    .line 57
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    if-eqz v4, :cond_0

    .line 109
    :goto_0
    return v7

    .line 59
    :cond_0
    new-instance v4, Lcom/jirbo/adcolony/c;

    const-string v5, "pre_popup_bg"

    invoke-static {v5}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/c;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    .line 60
    new-instance v4, Lcom/jirbo/adcolony/c;

    const-string v5, "v4vc_logo"

    invoke-static {v5}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/c;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/c;

    .line 61
    new-instance v4, Lcom/jirbo/adcolony/c;

    const-string v5, "yes_button_normal"

    invoke-static {v5}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/c;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ai;->f:Lcom/jirbo/adcolony/c;

    .line 62
    new-instance v4, Lcom/jirbo/adcolony/c;

    const-string v5, "yes_button_down"

    invoke-static {v5}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/c;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ai;->g:Lcom/jirbo/adcolony/c;

    .line 63
    new-instance v4, Lcom/jirbo/adcolony/c;

    const-string v5, "no_button_normal"

    invoke-static {v5}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/c;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ai;->h:Lcom/jirbo/adcolony/c;

    .line 64
    new-instance v4, Lcom/jirbo/adcolony/c;

    const-string v5, "no_button_down"

    invoke-static {v5}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/c;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ai;->i:Lcom/jirbo/adcolony/c;

    .line 65
    new-instance v4, Lcom/jirbo/adcolony/c;

    const-string v5, "done_button_normal"

    invoke-static {v5}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/c;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ai;->k:Lcom/jirbo/adcolony/c;

    .line 66
    new-instance v4, Lcom/jirbo/adcolony/c;

    const-string v5, "done_button_down"

    invoke-static {v5}, Lcom/jirbo/adcolony/t;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jirbo/adcolony/c;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/jirbo/adcolony/ai;->j:Lcom/jirbo/adcolony/c;

    .line 68
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->r:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->r:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/c;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->r:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jirbo/adcolony/ai;->f:Lcom/jirbo/adcolony/c;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->r:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jirbo/adcolony/ai;->g:Lcom/jirbo/adcolony/c;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->r:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jirbo/adcolony/ai;->h:Lcom/jirbo/adcolony/c;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->r:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jirbo/adcolony/ai;->i:Lcom/jirbo/adcolony/c;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->r:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jirbo/adcolony/ai;->k:Lcom/jirbo/adcolony/c;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v4, p0, Lcom/jirbo/adcolony/ai;->r:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/jirbo/adcolony/ai;->j:Lcom/jirbo/adcolony/c;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {}, Lcom/jirbo/adcolony/t;->b()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 79
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 81
    if-le v4, v5, :cond_4

    sub-int/2addr v4, v5

    int-to-double v4, v4

    div-double/2addr v4, v10

    .line 83
    :goto_1
    cmpg-double v6, v4, v0

    if-gez v6, :cond_1

    sget-boolean v6, Lcom/jirbo/adcolony/t;->d:Z

    if-nez v6, :cond_1

    iput-boolean v7, p0, Lcom/jirbo/adcolony/ai;->q:Z

    .line 84
    :cond_1
    cmpl-double v6, v4, v2

    if-lez v6, :cond_7

    .line 85
    :goto_2
    cmpg-double v4, v2, v0

    if-gez v4, :cond_6

    sget-boolean v2, Lcom/jirbo/adcolony/t;->d:Z

    if-eqz v2, :cond_5

    .line 86
    :goto_3
    sput-wide v0, Lcom/jirbo/adcolony/ai;->s:D

    .line 88
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ai;->q:Z

    if-eqz v2, :cond_2

    .line 90
    const-wide v2, 0x4004cccccccccccdL    # 2.6

    iput-wide v2, p0, Lcom/jirbo/adcolony/ai;->l:D

    .line 91
    iput-wide v8, p0, Lcom/jirbo/adcolony/ai;->m:D

    .line 92
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/jirbo/adcolony/ai;->n:D

    .line 93
    const-wide v2, 0x400199999999999aL    # 2.2

    iput-wide v2, p0, Lcom/jirbo/adcolony/ai;->o:D

    .line 94
    const-wide v2, 0x3ff3333333333333L    # 1.2

    iput-wide v2, p0, Lcom/jirbo/adcolony/ai;->p:D

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->d:Lcom/jirbo/adcolony/c;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/c;->a(D)V

    .line 98
    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->e:Lcom/jirbo/adcolony/c;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/c;->a(D)V

    .line 99
    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->g:Lcom/jirbo/adcolony/c;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/c;->a(D)V

    .line 100
    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->i:Lcom/jirbo/adcolony/c;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/c;->a(D)V

    .line 101
    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->f:Lcom/jirbo/adcolony/c;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/c;->a(D)V

    .line 102
    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->h:Lcom/jirbo/adcolony/c;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/c;->a(D)V

    .line 103
    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->j:Lcom/jirbo/adcolony/c;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/c;->a(D)V

    .line 104
    iget-object v2, p0, Lcom/jirbo/adcolony/ai;->k:Lcom/jirbo/adcolony/c;

    div-double v4, v0, v8

    invoke-virtual {v2, v4, v5}, Lcom/jirbo/adcolony/c;->a(D)V

    .line 105
    sget-object v2, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    mul-double/2addr v4, v0

    double-to-float v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    iget-boolean v2, p0, Lcom/jirbo/adcolony/ai;->q:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, v4

    double-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 107
    :cond_3
    sget-object v0, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto/16 :goto_0

    .line 81
    :cond_4
    sub-int v4, v5, v4

    int-to-double v4, v4

    div-double/2addr v4, v10

    goto/16 :goto_1

    .line 85
    :cond_5
    const-wide v0, 0x3ffb333333333333L    # 1.7

    goto/16 :goto_3

    :cond_6
    move-wide v0, v2

    goto/16 :goto_3

    :cond_7
    move-wide v2, v4

    goto/16 :goto_2
.end method

.method c()I
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/jirbo/adcolony/ai;->w:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method c(Ljava/lang/String;IILandroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/jirbo/adcolony/ai;->f:Lcom/jirbo/adcolony/c;

    iget v0, v0, Lcom/jirbo/adcolony/c;->f:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 186
    iget-object v1, p0, Lcom/jirbo/adcolony/ai;->f:Lcom/jirbo/adcolony/c;

    iget v1, v1, Lcom/jirbo/adcolony/c;->g:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    .line 187
    invoke-virtual {p0}, Lcom/jirbo/adcolony/ai;->c()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 188
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/jirbo/adcolony/ai;->b(Ljava/lang/String;IILandroid/graphics/Canvas;)V

    .line 189
    return-void
.end method
